.class public abstract Lcom/phicomm/speaker/model/common/b/b;
.super Lcom/phicomm/speaker/model/common/b/c;
.source "HttpPost.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "application/octet-stream"

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/phicomm/speaker/model/common/b/b;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/model/common/b/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 24
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/common/b/b;->c()Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 25
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/common/b/b;->c()Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/common/b/b;->c()Ljava/net/HttpURLConnection;

    move-result-object p1

    const-string p2, "Content-type"

    invoke-virtual {p1, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/phicomm/speaker/b/i;
.end method

.method public a([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/common/b/b;->c()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/common/b/b;->a()Lcom/phicomm/speaker/b/i;

    move-result-object v1

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 44
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    const-string v1, "post bytes length: %sb"

    const/4 v2, 0x1

    .line 45
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/phicomm/speaker/f/a/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/phicomm/speaker/f/a/k;->a([BLjava/io/OutputStream;Lcom/phicomm/speaker/b/i;)V

    .line 49
    :goto_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method
