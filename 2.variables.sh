#!/bin/bash

# ცვლადის შექმნა და მნიშვნელობის მინიჭება
i=8 # ! ცვლადის მინიჭებისას ტოლობასა და ვარიაციას("i") შორის არ უდნა იყოს სივრცე გამოყოფილი
# i = 8 ან i= 8 ან i =8 არასწორია! სწორია i=8
z="ვაშლი"

# ცვლადის დასაბეჭდად აუცილებელია სახელს წინ მიეწეროს "$" სიმბოლო
# მაგალითად variable="Apple" მისი მნიშვნელობა ფუნქციაში იქნება $variable
echo "ცვლადი i = $i"
echo "ცვლადი z = $z"