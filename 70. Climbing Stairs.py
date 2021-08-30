{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "name": "26. Remove Duplicates from Sorted Array.ipynb",
      "provenance": [],
      "authorship_tag": "ABX9TyMXZ7aobtM5TArTU70rpmZR",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/Freya-LR/Leetcode/blob/main/70.%20Climbing%20Stairs.py\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "metadata": {
        "id": "PJp5ZXsd3oKY"
      },
      "source": [
        "# Dynamic Programming\n",
        "# Time: O(n)\n",
        "# Space: O(1)\n",
        "\n",
        "class Solution:\n",
        "    def climbStairs(self, n):\n",
        "        \"\"\"\n",
        "        type n: int\n",
        "        rtype: int\n",
        "        \"\"\"\n",
        "        prev, current = 0, 1\n",
        "        for i in range(n):\n",
        "            prev, current = current, prev + current,\n",
        "\n",
        "        return current\n",
        "\n",
        "        \n"
      ],
      "execution_count": 98,
      "outputs": []
    }
  ]
}