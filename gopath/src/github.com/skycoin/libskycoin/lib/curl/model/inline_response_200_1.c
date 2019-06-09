#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "inline_response_200_1.h"



inline_response_200_1_t *inline_response_200_1_create(
    char *csrf_token
    ) {
	inline_response_200_1_t *inline_response_200_1_local_var = malloc(sizeof(inline_response_200_1_t));
    if (!inline_response_200_1_local_var) {
        return NULL;
    }
	inline_response_200_1_local_var->csrf_token = csrf_token;

	return inline_response_200_1_local_var;
}


void inline_response_200_1_free(inline_response_200_1_t *inline_response_200_1) {
    listEntry_t *listEntry;
    free(inline_response_200_1->csrf_token);
	free(inline_response_200_1);
}

cJSON *inline_response_200_1_convertToJSON(inline_response_200_1_t *inline_response_200_1) {
	cJSON *item = cJSON_CreateObject();

	// inline_response_200_1->csrf_token
    if(inline_response_200_1->csrf_token) { 
    if(cJSON_AddStringToObject(item, "csrf_token", inline_response_200_1->csrf_token) == NULL) {
    goto fail; //String
    }
     } 

	return item;
fail:
	if (item) {
        cJSON_Delete(item);
    }
	return NULL;
}

inline_response_200_1_t *inline_response_200_1_parseFromJSON(cJSON *inline_response_200_1JSON){

    inline_response_200_1_t *inline_response_200_1_local_var = NULL;

    // inline_response_200_1->csrf_token
    cJSON *csrf_token = cJSON_GetObjectItemCaseSensitive(inline_response_200_1JSON, "csrf_token");
    if (csrf_token) { 
    if(!cJSON_IsString(csrf_token))
    {
    goto end; //String
    }
    }


    inline_response_200_1_local_var = inline_response_200_1_create (
        csrf_token ? strdup(csrf_token->valuestring) : NULL
        );

    return inline_response_200_1_local_var;
end:
    return NULL;

}
