from typing import List


def primes(n: int) -> List[int]:
    primes = []

    for i in range(2, n):
        for j in range(2, i):
            if i % j == 0:
                break
        else:
            primes.append(i)
    return primes
