#ifndef VERIFY_TYPE_H
#define VERIFY_TYPE_H

#include <platform.h>
#include "../ast/ast.h"
#include "../pass/pass.h"

PONY_EXTERN_C_BEGIN

bool verify_struct(pass_opt_t* opt, ast_t* ast);

PONY_EXTERN_C_END

#endif
