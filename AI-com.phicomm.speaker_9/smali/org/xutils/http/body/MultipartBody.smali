.class public Lorg/xutils/http/body/MultipartBody;
.super Ljava/lang/Object;
.source "MultipartBody.java"

# interfaces
.implements Lorg/xutils/http/body/ProgressBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/http/body/MultipartBody$a;
    }
.end annotation


# static fields
.field private static a:[B

.field private static b:[B

.field private static c:[B


# instance fields
.field private d:[B

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:J

.field private j:Lorg/xutils/http/ProgressHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "--------7da3d81520810"

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/xutils/http/body/MultipartBody;->a:[B

    const-string v0, "\r\n"

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/xutils/http/body/MultipartBody;->b:[B

    const-string v0, "--"

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/xutils/http/body/MultipartBody;->c:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    .line 31
    iput-object v0, p0, Lorg/xutils/http/body/MultipartBody;->f:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lorg/xutils/http/body/MultipartBody;->h:J

    .line 35
    iput-wide v0, p0, Lorg/xutils/http/body/MultipartBody;->i:J

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iput-object p2, p0, Lorg/xutils/http/body/MultipartBody;->f:Ljava/lang/String;

    .line 41
    :cond_0
    iput-object p1, p0, Lorg/xutils/http/body/MultipartBody;->g:Ljava/util/List;

    .line 42
    invoke-direct {p0}, Lorg/xutils/http/body/MultipartBody;->a()V

    .line 45
    new-instance p1, Lorg/xutils/http/body/MultipartBody$a;

    invoke-direct {p1, p0}, Lorg/xutils/http/body/MultipartBody$a;-><init>(Lorg/xutils/http/body/MultipartBody;)V

    .line 47
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/xutils/http/body/MultipartBody;->writeTo(Ljava/io/OutputStream;)V

    .line 48
    iget-object p1, p1, Lorg/xutils/http/body/MultipartBody$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/xutils/http/body/MultipartBody;->h:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 p1, -0x1

    .line 50
    iput-wide p1, p0, Lorg/xutils/http/body/MultipartBody;->h:J

    :goto_0
    return-void
.end method

.method private a()V
    .locals 4

    .line 62
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40efffe000000000L    # 65535.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/body/MultipartBody;->d:[B

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/form-data; boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lorg/xutils/http/body/MultipartBody;->a:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/body/MultipartBody;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/io/OutputStream;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    instance-of v0, p1, Lorg/xutils/http/body/MultipartBody$a;

    if-eqz v0, :cond_0

    .line 178
    check-cast p1, Lorg/xutils/http/body/MultipartBody$a;

    invoke-virtual {p1, p2}, Lorg/xutils/http/body/MultipartBody$a;->a(Ljava/io/File;)V

    goto :goto_0

    .line 180
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    instance-of v0, p1, Lorg/xutils/http/body/MultipartBody$a;

    if-eqz v0, :cond_0

    .line 186
    check-cast p1, Lorg/xutils/http/body/MultipartBody$a;

    invoke-virtual {p1, p2}, Lorg/xutils/http/body/MultipartBody$a;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    .line 190
    :try_start_0
    new-array v0, v0, [B

    .line 191
    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v2, 0x0

    .line 192
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 193
    iget-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->i:J

    int-to-long v4, v1

    add-long v6, v2, v4

    iput-wide v6, p0, Lorg/xutils/http/body/MultipartBody;->i:J

    .line 194
    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->j:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/xutils/http/body/MultipartBody;->j:Lorg/xutils/http/ProgressHandler;

    iget-wide v3, p0, Lorg/xutils/http/body/MultipartBody;->h:J

    iget-wide v5, p0, Lorg/xutils/http/body/MultipartBody;->i:J

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    new-instance p1, Lorg/xutils/common/Callback$CancelledException;

    const-string v0, "upload stopped!"

    invoke-direct {p1, v0}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_2
    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method private a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 120
    new-array v0, v0, [[B

    sget-object v1, Lorg/xutils/http/body/MultipartBody;->c:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/xutils/http/body/MultipartBody;->a:[B

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->d:[B

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/io/OutputStream;[[B)V

    const-string v0, ""

    .line 124
    instance-of v1, p3, Lorg/xutils/http/body/BodyItemWrapper;

    if-eqz v1, :cond_0

    .line 125
    check-cast p3, Lorg/xutils/http/body/BodyItemWrapper;

    .line 126
    invoke-virtual {p3}, Lorg/xutils/http/body/BodyItemWrapper;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 127
    invoke-virtual {p3}, Lorg/xutils/http/body/BodyItemWrapper;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {p3}, Lorg/xutils/http/body/BodyItemWrapper;->getContentType()Ljava/lang/String;

    move-result-object p3

    move-object v7, v1

    move-object v1, p3

    move-object p3, v0

    move-object v0, v7

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 131
    :goto_0
    instance-of v4, p3, Ljava/io/File;

    if-eqz v4, :cond_3

    .line 132
    move-object v4, p3

    check-cast v4, Ljava/io/File;

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    invoke-static {v4}, Lorg/xutils/http/body/FileBody;->getFileContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 139
    :cond_2
    new-array v5, v3, [[B

    iget-object v6, p0, Lorg/xutils/http/body/MultipartBody;->f:Ljava/lang/String;

    invoke-static {p2, v0, v6}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    aput-object p2, v5, v2

    invoke-direct {p0, p1, v5}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/io/OutputStream;[[B)V

    .line 140
    new-array p2, v3, [[B

    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody;->f:Ljava/lang/String;

    invoke-static {p3, v1, v0}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p3

    aput-object p3, p2, v2

    invoke-direct {p0, p1, p2}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/io/OutputStream;[[B)V

    .line 141
    new-array p2, v2, [[B

    invoke-direct {p0, p1, p2}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/io/OutputStream;[[B)V

    .line 142
    invoke-direct {p0, p1, v4}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/io/OutputStream;Ljava/io/File;)V

    .line 143
    new-array p2, v2, [[B

    invoke-direct {p0, p1, p2}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/io/OutputStream;[[B)V

    goto :goto_2

    .line 145
    :cond_3
    new-array v4, v3, [[B

    iget-object v5, p0, Lorg/xutils/http/body/MultipartBody;->f:Ljava/lang/String;

    invoke-static {p2, v0, v5}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    aput-object p2, v4, v2

    invoke-direct {p0, p1, v4}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/io/OutputStream;[[B)V

    .line 146
    new-array p2, v3, [[B

    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody;->f:Ljava/lang/String;

    invoke-static {p3, v1, v0}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, p2, v2

    invoke-direct {p0, p1, p2}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/io/OutputStream;[[B)V

    .line 147
    new-array p2, v2, [[B

    invoke-direct {p0, p1, p2}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/io/OutputStream;[[B)V

    .line 148
    instance-of p2, p3, Ljava/io/InputStream;

    if-eqz p2, :cond_4

    .line 149
    check-cast p3, Ljava/io/InputStream;

    invoke-direct {p0, p1, p3}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 150
    new-array p2, v2, [[B

    invoke-direct {p0, p1, p2}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/io/OutputStream;[[B)V

    goto :goto_2

    .line 153
    :cond_4
    instance-of p2, p3, [B

    if-eqz p2, :cond_5

    .line 154
    check-cast p3, [B

    goto :goto_1

    .line 156
    :cond_5
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/xutils/http/body/MultipartBody;->f:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    .line 158
    :goto_1
    new-array p2, v3, [[B

    aput-object p3, p2, v2

    invoke-direct {p0, p1, p2}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/io/OutputStream;[[B)V

    .line 159
    iget-wide p1, p0, Lorg/xutils/http/body/MultipartBody;->i:J

    array-length p3, p3

    int-to-long v0, p3

    add-long v2, p1, v0

    iput-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->i:J

    .line 160
    iget-object p1, p0, Lorg/xutils/http/body/MultipartBody;->j:Lorg/xutils/http/ProgressHandler;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody;->j:Lorg/xutils/http/ProgressHandler;

    iget-wide v1, p0, Lorg/xutils/http/body/MultipartBody;->h:J

    iget-wide v3, p0, Lorg/xutils/http/body/MultipartBody;->i:J

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result p1

    if-nez p1, :cond_6

    .line 161
    new-instance p1, Lorg/xutils/common/Callback$CancelledException;

    const-string p2, "upload stopped!"

    invoke-direct {p1, p2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    return-void
.end method

.method private varargs a(Ljava/io/OutputStream;[[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 169
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 170
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_0
    sget-object p2, Lorg/xutils/http/body/MultipartBody;->b:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    instance-of p0, p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 217
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "text/plain; charset="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "application/octet-stream"

    goto :goto_0

    :cond_1
    const-string p0, "\\/jpg$"

    const-string v1, "/jpeg"

    .line 222
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 224
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "; name=\""

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "; filename=\""

    .line 208
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    const-string v1, "\\\""

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lorg/xutils/http/body/MultipartBody;->h:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody;->e:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/xutils/http/body/MultipartBody;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/http/body/MultipartBody;->e:Ljava/lang/String;

    return-void
.end method

.method public setProgressHandler(Lorg/xutils/http/ProgressHandler;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/xutils/http/body/MultipartBody;->j:Lorg/xutils/http/ProgressHandler;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody;->j:Lorg/xutils/http/ProgressHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->j:Lorg/xutils/http/ProgressHandler;

    iget-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->h:J

    iget-wide v4, p0, Lorg/xutils/http/body/MultipartBody;->i:J

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance p1, Lorg/xutils/common/Callback$CancelledException;

    const-string v0, "upload stopped!"

    invoke-direct {p1, v0}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/common/util/KeyValue;

    .line 97
    iget-object v2, v1, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 98
    iget-object v1, v1, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    .line 99
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    .line 100
    invoke-direct {p0, p1, v2, v1}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 103
    new-array v0, v0, [[B

    const/4 v1, 0x0

    sget-object v2, Lorg/xutils/http/body/MultipartBody;->c:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/xutils/http/body/MultipartBody;->a:[B

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/xutils/http/body/MultipartBody;->d:[B

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/xutils/http/body/MultipartBody;->c:[B

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/MultipartBody;->a(Ljava/io/OutputStream;[[B)V

    .line 104
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 106
    iget-object p1, p0, Lorg/xutils/http/body/MultipartBody;->j:Lorg/xutils/http/ProgressHandler;

    if-eqz p1, :cond_3

    .line 107
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody;->j:Lorg/xutils/http/ProgressHandler;

    iget-wide v1, p0, Lorg/xutils/http/body/MultipartBody;->h:J

    iget-wide v3, p0, Lorg/xutils/http/body/MultipartBody;->h:J

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    :cond_3
    return-void
.end method
