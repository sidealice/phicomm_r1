.class public final Lcom/tencent/bugly/proguard/ac;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/proguard/ab;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 15
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 16
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 17
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 18
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 21
    return-object v1
.end method

.method public final b([B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 26
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 28
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 31
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    :goto_0
    array-length v4, v2

    invoke-virtual {v1, v2, v6, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 34
    invoke-virtual {v3, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 37
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 38
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 39
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 40
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 41
    return-object v2
.end method
