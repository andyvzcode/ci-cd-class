from main import sum_two_numbers


def test_sum_two_numbers():
    assert sum_two_numbers(1, 2) == 3
    assert isinstance(sum_two_numbers(1, 2), int)

    assert sum_two_numbers(1, 2) > 2
    assert not isinstance(sum_two_numbers(1, 2), float)
