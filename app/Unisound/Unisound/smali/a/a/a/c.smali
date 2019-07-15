.class public La/a/a/c;
.super Ljava/lang/Object;


# direct methods
.method private static a(C)[Ljava/lang/String;
    .locals 1

    invoke-static {}, La/a/a/a;->a()La/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/a;->a(C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(CLa/a/a/a/b;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, La/a/a/c;->b(CLa/a/a/a/b;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(CLa/a/a/a/b;)[Ljava/lang/String;
    .locals 3

    invoke-static {p0}, La/a/a/c;->a(C)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-static {v2, p1}, La/a/a/b;->a(Ljava/lang/String;La/a/a/a/b;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
