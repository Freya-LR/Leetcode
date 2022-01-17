{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "name": "177. Nth Highest Salary.sql",
      "provenance": [],
      "authorship_tag": "ABX9TyNP2W7WjV3GXwSHD5eJ3R/l",
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
        "<a href=\"https://colab.research.google.com/github/Freya-LR/Leetcode/blob/main/177.%20Nth%20Highest%20Salary.sql\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "metadata": {
        "id": "NjUB-dYtG_p9"
      },
      "source": [
        "CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS\n",
        "BEGIN\n",
        "    RETURN (\n",
        "        /* Write your T-SQL query statement below. */\n",
        "    SELECT DISTINCT Salary FROM (SELECT Salary,\n",
        "                                 DENSE_RANK () OVER (ORDER BY Salary DESC) AS R\n",
        "                                 FROM Employee )  TEM\n",
        "        WHERE R=@N\n",
        "    );\n",
        "END"
      ],
      "execution_count": null,
      "outputs": []
    }
  ]
}