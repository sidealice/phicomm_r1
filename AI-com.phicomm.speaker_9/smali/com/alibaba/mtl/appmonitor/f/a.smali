.class public Lcom/alibaba/mtl/appmonitor/f/a;
.super Ljava/lang/Object;
.source "ParseUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 1

    .line 6
    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/f/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method
