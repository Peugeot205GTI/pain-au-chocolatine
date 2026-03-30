/*
** EPITECH PROJECT, 2026
** pain-au-chocolatine
** File description:
** test_main-test
*/

#include <criterion/criterion.h>
#include "../main.h"

Test(sixseven, returns_correct_value)
{
    int result = sixseven();
    cr_assert_eq(result, 67, "sixseven() should return 67");
}

Test(sixseven, not_zero)
{
    int result = sixseven();
    cr_assert_neq(result, 0, "sixseven() should not return 0");
}