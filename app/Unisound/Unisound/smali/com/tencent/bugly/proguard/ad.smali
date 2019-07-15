.class public final Lcom/tencent/bugly/proguard/ad;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/proguard/ab;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v3, "zip"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 18
    array-length v3, p1

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 19
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 20
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 21
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 22
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 23
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 24
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 25
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

    .line 30
    const/4 v0, 0x0

    .line 31
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 32
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 35
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 37
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    :goto_1
    array-length v4, v0

    invoke-virtual {v2, v0, v6, v4}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 40
    invoke-virtual {v3, v0, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 43
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 44
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 47
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 48
    return-object v0
.end method
