.class public Lorg/xutils/http/body/FileBody;
.super Lorg/xutils/http/body/InputStreamBody;
.source "FileBody.java"


# instance fields
.field private contentType:Ljava/lang/String;

.field private file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/xutils/http/body/InputStreamBody;-><init>(Ljava/io/InputStream;)V

    .line 24
    iput-object p1, p0, Lorg/xutils/http/body/FileBody;->file:Ljava/io/File;

    .line 25
    iput-object p2, p0, Lorg/xutils/http/body/FileBody;->contentType:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static getFileContentType(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "filename":Ljava/lang/String;
    invoke-static {v1}, Ljava/net/HttpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const-string v0, "application/octet-stream"

    .line 49
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const-string v2, "\\/jpg$"

    const-string v3, "/jpeg"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/xutils/http/body/FileBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/xutils/http/body/FileBody;->file:Ljava/io/File;

    invoke-static {v0}, Lorg/xutils/http/body/FileBody;->getFileContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/body/FileBody;->contentType:Ljava/lang/String;

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/body/FileBody;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lorg/xutils/http/body/FileBody;->contentType:Ljava/lang/String;

    .line 31
    return-void
.end method
