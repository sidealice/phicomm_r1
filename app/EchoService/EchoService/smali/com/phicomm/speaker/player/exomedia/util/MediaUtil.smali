.class public Lcom/phicomm/speaker/player/exomedia/util/MediaUtil;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getUriWithProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 38
    if-nez p0, :cond_1

    .line 39
    const-string p0, ""

    .line 49
    .end local p0    # "uri":Ljava/lang/String;
    .local v0, "protocol":Ljava/lang/String;
    .local v1, "tempUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p0

    .line 43
    .end local v0    # "protocol":Ljava/lang/String;
    .end local v1    # "tempUri":Landroid/net/Uri;
    .restart local p0    # "uri":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 44
    .restart local v1    # "tempUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 45
    .restart local v0    # "protocol":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
