.class public Lorg/xutils/http/body/FileBody;
.super Lorg/xutils/http/body/InputStreamBody;
.source "FileBody.java"


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/xutils/http/body/InputStreamBody;-><init>(Ljava/io/InputStream;)V

    .line 24
    iput-object p1, p0, Lorg/xutils/http/body/FileBody;->a:Ljava/io/File;

    .line 25
    iput-object p2, p0, Lorg/xutils/http/body/FileBody;->b:Ljava/lang/String;

    return-void
.end method

.method public static getFileContentType(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 42
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-static {p0}, Ljava/net/HttpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "application/octet-stream"

    goto :goto_0

    :cond_0
    const-string v0, "\\/jpg$"

    const-string v1, "/jpeg"

    .line 47
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/xutils/http/body/FileBody;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/xutils/http/body/FileBody;->a:Ljava/io/File;

    invoke-static {v0}, Lorg/xutils/http/body/FileBody;->getFileContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/body/FileBody;->b:Ljava/lang/String;

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/body/FileBody;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/xutils/http/body/FileBody;->b:Ljava/lang/String;

    return-void
.end method
