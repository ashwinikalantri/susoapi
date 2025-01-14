# invalid inputs

# interview_id
test_that("Issues error if `interview_id` is invalid form", {

    expect_error(assign_interview_to_sup(
                    interview_id = "123",
                    user_name = "ArthurSup123"
                ))

})

# user_id
test_that("Issues error if `user_id` is invalid form", {

    expect_error(assign_interview_to_sup(
                    interview_id = "7bdf95abab1b4d46b818cdf7546e049f",    
                    user_id = "123"
                ))

})

# user_name
test_that("Issues error if `user_id` and `user_name` empty", {

    expect_error(assign_interview_to_sup(
                    interview_id = "7bdf95abab1b4d46b818cdf7546e049f"
                ))

})


# expected outputs

# message
test_that("Issues message to inform about outcome", {

    vcr::use_cassette("assign_interview_to_sup_msg", {
        expect_message(assign_interview_to_sup(
                        interview_id = "7bdf95abab1b4d46b818cdf7546e049f",
                        user_name = "ArthurSup123",
                        verbose = TRUE
                    ))
    })

})

# logical if `verbose = TRUE`
test_that("Returns logical if `verbose = TRUE`", {

    vcr::use_cassette("assign_interview_to_sup_logical", {
        suppressMessages(expect_message(assign_interview_to_sup(
                        interview_id = "7bdf95abab1b4d46b818cdf7546e049f",
                        user_name = "ArthurSup123",
                        verbose = TRUE
                    )))
    })

})
