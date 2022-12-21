
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "vec2.h"

#define alignof(t) __alignof__(t)

/*
 * Print size and alignment for vector2_t data type
 */
void vector2_print_vector2_type_info(){
	printf("sizeof(vector2_t) = %zu\n", sizeof(vector2_t));
	printf("alignof(vector2_t) = %zu\n", alignof(vector2_t));
}

/*
 * Custom allocator for vector2_t object
 */
vector2_t *vector2_alloc_vector2(){
	vector2_t *out = NULL;
	out = malloc(sizeof *out);
	return out;
}

/*
 * Custom procedure to release previously allocated memory for an object of 
 * type vector2_t
 */
void vector2_free_vector2(vector2_t *v){
	if(v != NULL){
		free(v);
	}
}

/*
 * Custom allocator for an object of type rowsum1_t
 */
rowsum1_t *vector2_alloc_rowsum1(){
	rowsum1_t *r = NULL;
	r = malloc(sizeof *r);
	return r;
}

/*
 * Release memory allocated for an object of type rowsum1_t
 */
void vector2_free_rowsum1(rowsum1_t *r){
	if(r != NULL){
		free(r);
	}
}

/*
 * Custom allocator for objects of type colsum1_t
 */
colsum1_t *vector2_alloc_colsum1(){
	colsum1_t *c = NULL;
	c = malloc(sizeof *c);
	return c;
}

/*
 * Release memory allocated for an object of type colsum1_t
 */
void vector2_free_colsum1(colsum1_t *c){
	if(c != NULL){
		free(c);
	}
}

/*
 * Compute the elementwise sum between v1 and v2 and return it in out
 *
 * Unroll loop using an unroll factor K = 4.
 *
 * Computing every time in the loop "jlimit" and "jres" is better for 
 * multithreading execution.
 */
void vector2_add(vector2_t out, vector2_t v1, vector2_t v2){
	for(uint32_t i = 0; i < NROWS; i++){
		number_t *v1col0 = &v1[i][0];
		number_t *v1col1 = &v1[i][1];
		number_t *v1col2 = &v1[i][2];
		number_t *v1col3 = &v1[i][3];

		number_t *v2col0 = &v2[i][0];
		number_t *v2col1 = &v2[i][1];
		number_t *v2col2 = &v2[i][2];
		number_t *v2col3 = &v2[i][3];

		number_t *outcol0 = &out[i][0];
		number_t *outcol1 = &out[i][1];
		number_t *outcol2 = &out[i][2];
		number_t *outcol3 = &out[i][3];

		uint32_t j = 0;
		uint32_t jlimit = NCOLS >> 2;
		if(jlimit){
			while(1){
				// LOAD
				number_t v1_0 = v1col0[j];
				number_t v1_1 = v1col1[j];
				number_t v1_2 = v1col2[j];
				number_t v1_3 = v1col3[j];

				number_t v2_0 = v2col0[j];
				number_t v2_1 = v2col1[j];
				number_t v2_2 = v2col2[j];
				number_t v2_3 = v2col3[j];

				// UPDATE
				number_t sum1	= v1_0 + v2_0;
				number_t sum2	= v1_1 + v2_1;
				number_t sum3	= v1_2 + v2_2;
				number_t sum4	= v1_3 + v2_3;
				uint32_t jnext	= j + 4;
				uint32_t jlnext	= jlimit - 1;

				// STORE
				outcol0[j]	= sum1;
				outcol1[j]	= sum2;
				outcol2[j]	= sum3;
				outcol3[j]	= sum4;

				// TEST
				if(jlnext == 0){ break; }
				jlimit		= jlnext;
				j			= jnext;
			}
		}

		uint32_t jres = NCOLS & 3;
		if(jres){
			while(1){
				// LOAD
				number_t v1_0 = v1col0[j];
				number_t v2_0 = v2col0[j];

				// UPDATE
				number_t sum0	= v1_0 + v2_0;
				uint32_t jnext	= j + 1;
				uint32_t jrnext	= jres - 1;

				// STORE
				outcol0[j] = sum0;

				// TEST
				if(jrnext == 0){ break; }
				j		= jnext;
				jres	= jrnext;
			}
		} // jres
	}
}

/*
 * Compute the sum over "v" rows and return the result in "out"
 */
void vector2_sum_rows(rowsum1_t out, vector2_t v){
	uint32_t i = 0;
	uint32_t ilimit = NROWS;
	if(ilimit){
		while(1){
			number_t *restrict icol0 = &v[i][0];
			number_t *restrict icol1 = &v[i][1];
			number_t *restrict icol2 = &v[i][2];
			number_t *restrict icol3 = &v[i][3];

			number_t sum0 = 0;
			number_t sum1 = 0;
			number_t sum2 = 0;
			number_t sum3 = 0;
			
			uint32_t j = 0;
			uint32_t jlimit = NCOLS >> 2;
			if(jlimit){
				while(1){
					sum0 += icol0[j];
					sum1 += icol1[j];
					sum2 += icol2[j];
					sum3 += icol3[j];

					j += 4;
					jlimit -= 1;
					if(jlimit == 0){ break; }
				} /* while */
			} /* jlimit */

			uint32_t jres = NCOLS & 3;
			if(jres){
				while(1){
					sum0 += icol0[j];

					j += 1;
					jres -= 1;
					if(jres == 0){ break; }
				} /* while */
			} /* jres */

			number_t sum01 = sum0 + sum1;
			number_t sum23 = sum2 + sum3;
			out[i] = sum01 + sum23;

			i += 1;
			ilimit -= 1;
			if(ilimit == 0){ break; }
		} /* while */
	} /* ilimit */
}

/*
 * Compute the sum over "v" column and return the result in "out"
 */
void vector2_sum_cols(colsum1_t out, vector2_t v){
	for(int i = 0; i < NCOLS; i++){
		out[i] = 0;
		for(int j = 0; j < NROWS; j++){
			out[i] += v[j][i];
		}
	}
}

/*
 * Print the two dimensional vector object
 */
void vector2_print_vector2_data(vector2_t vec2){
	for(int i = 0; i < NROWS; i++){
		printf("[%d] => ", i);
		number_t *irow = &vec2[i][0];
		for(int j = 0; j < NCOLS; j++){
			printf("[%d] = %.4f, ", j, irow[j]);
		}
		printf("\n");
	}
}

/*
 * Randomly initialize an vec2 object.
 * Scale and shift are respectively the scale and shift factors used to 
 * generate the random number.
 *
 * Numbers are cast to `number_t` data type to maintain the consistency with 
 * the `vec2` object.
 */
void vector2_rand_init_vector2(vector2_t vec2, double scale, double shift){
	srand(time(NULL));
	double irm = 1.0f / (double) RAND_MAX;
	scale *= irm;
	shift *= irm;
	for(int i = 0; i < NROWS; i++){
		number_t *irow = &vec2[i][0];
		for(int j = 0; j < NCOLS; j++){
			double rscale = rand() * scale;
			double rshift = rand() * shift;
			irow[j] = (number_t)rscale + (number_t)rshift;
		}
	}
}

/*
 * Print the content of an object of type rowsum1_t
 */
void vector2_print_rowsum1_data(rowsum1_t v){
	for(int i = 0; i < NROWS; i++){
		printf("sum of the %d-th row = %.4f\n", i, v[i]);
	}
}

/*
 * Print the content of an object of type colsum1_t
 */
void vector2_print_colsum1_data(colsum1_t v){
	for(int i = 0; i < NCOLS; i++){
		printf("sum of the %d-th column = %.4f\n", i, v[i]);
	}
}

