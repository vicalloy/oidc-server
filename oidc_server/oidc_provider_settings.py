def userinfo(claims, user):
    claims["name"] = user.username
    claims["preferred_username"] = user.username
    return claims
