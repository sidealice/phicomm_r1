.class public Lorg/xutils/http/body/MultipartBody;
.super Ljava/lang/Object;
.source "MultipartBody.java"

# interfaces
.implements Lorg/xutils/http/body/ProgressBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/http/body/MultipartBody$CounterOutputStream;
    }
.end annotation


# static fields
.field private static BOUNDARY_PREFIX_BYTES:[B

.field private static END_BYTES:[B

.field private static TWO_DASHES_BYTES:[B


# instance fields
.field private boundaryPostfixBytes:[B

.field private callBackHandler:Lorg/xutils/http/ProgressHandler;

.field private charset:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private current:J

.field private multipartParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private total:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "--------7da3d81520810"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/xutils/http/body/MultipartBody;->BOUNDARY_PREFIX_BYTES:[B

    .line 27
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/xutils/http/body/MultipartBody;->END_BYTES:[B

    .line 28
    const-string v0, "--"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/xutils/http/body/MultipartBody;->TWO_DASHES_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "multipartParams":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/common/util/KeyValue;>;"
    const-wide/16 v4, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v2, "UTF-8"

    iput-object v2, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    .line 34
    iput-wide v4, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    .line 35
    iput-wide v4, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    iput-object p2, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    .line 41
    :cond_0
    iput-object p1, p0, Lorg/xutils/http/body/MultipartBody;->multipartParams:Ljava/util/List;

    .line 42
    invoke-direct {p0}, Lorg/xutils/http/body/MultipartBody;->generateContentType()V

    .line 45
    new-instance v0, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;

    invoke-direct {v0, p0}, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;-><init>(Lorg/xutils/http/body/MultipartBody;)V

    .line 47
    .local v0, "counter":Lorg/xutils/http/body/MultipartBody$CounterOutputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/xutils/http/body/MultipartBody;->writeTo(Ljava/io/OutputStream;)V

    .line 48
    iget-object v2, v0, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->total:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/io/IOException;
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    goto :goto_0
.end method

.method private static buildContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method private static buildContentType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text/plain; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 224
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 219
    :cond_0
    const-string p1, "application/octet-stream"

    goto :goto_0

    .line 222
    :cond_1
    const-string v1, "\\/jpg$"

    const-string v2, "/jpeg"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private generateContentType()V
    .locals 6

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40efffe000000000L    # 65535.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "boundaryPostfix":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/body/MultipartBody;->boundaryPostfixBytes:[B

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/form-data; boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lorg/xutils/http/body/MultipartBody;->BOUNDARY_PREFIX_BYTES:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/body/MultipartBody;->contentType:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private writeEntry(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 120
    const/4 v1, 0x3

    new-array v1, v1, [[B

    sget-object v2, Lorg/xutils/http/body/MultipartBody;->TWO_DASHES_BYTES:[B

    aput-object v2, v1, v6

    sget-object v2, Lorg/xutils/http/body/MultipartBody;->BOUNDARY_PREFIX_BYTES:[B

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/xutils/http/body/MultipartBody;->boundaryPostfixBytes:[B

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 122
    const-string v9, ""

    .line 123
    .local v9, "fileName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 124
    .local v7, "contentType":Ljava/lang/String;
    instance-of v1, p3, Lorg/xutils/http/body/BodyItemWrapper;

    if-eqz v1, :cond_0

    move-object v10, p3

    .line 125
    check-cast v10, Lorg/xutils/http/body/BodyItemWrapper;

    .line 126
    .local v10, "wrapper":Lorg/xutils/http/body/BodyItemWrapper;
    invoke-virtual {v10}, Lorg/xutils/http/body/BodyItemWrapper;->getValue()Ljava/lang/Object;

    move-result-object p3

    .line 127
    invoke-virtual {v10}, Lorg/xutils/http/body/BodyItemWrapper;->getFileName()Ljava/lang/String;

    move-result-object v9

    .line 128
    invoke-virtual {v10}, Lorg/xutils/http/body/BodyItemWrapper;->getContentType()Ljava/lang/String;

    move-result-object v7

    .line 131
    .end local v10    # "wrapper":Lorg/xutils/http/body/BodyItemWrapper;
    :cond_0
    instance-of v1, p3, Ljava/io/File;

    if-eqz v1, :cond_4

    move-object v8, p3

    .line 132
    check-cast v8, Ljava/io/File;

    .line 133
    .local v8, "file":Ljava/io/File;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 136
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    invoke-static {v8}, Lorg/xutils/http/body/FileBody;->getFileContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 139
    :cond_2
    new-array v1, v4, [[B

    iget-object v2, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    invoke-static {p2, v9, v2}, Lorg/xutils/http/body/MultipartBody;->buildContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {p0, p1, v1}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 140
    new-array v1, v4, [[B

    iget-object v2, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    invoke-static {p3, v7, v2}, Lorg/xutils/http/body/MultipartBody;->buildContentType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {p0, p1, v1}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 141
    new-array v1, v6, [[B

    invoke-direct {p0, p1, v1}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 142
    invoke-direct {p0, p1, v8}, Lorg/xutils/http/body/MultipartBody;->writeFile(Ljava/io/OutputStream;Ljava/io/File;)V

    .line 143
    new-array v1, v6, [[B

    invoke-direct {p0, p1, v1}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 165
    .end local v8    # "file":Ljava/io/File;
    .end local p3    # "value":Ljava/lang/Object;
    :cond_3
    :goto_0
    return-void

    .line 145
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_4
    new-array v1, v4, [[B

    iget-object v2, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    invoke-static {p2, v9, v2}, Lorg/xutils/http/body/MultipartBody;->buildContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {p0, p1, v1}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 146
    new-array v1, v4, [[B

    iget-object v2, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    invoke-static {p3, v7, v2}, Lorg/xutils/http/body/MultipartBody;->buildContentType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {p0, p1, v1}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 147
    new-array v1, v6, [[B

    invoke-direct {p0, p1, v1}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 148
    instance-of v1, p3, Ljava/io/InputStream;

    if-eqz v1, :cond_5

    .line 149
    check-cast p3, Ljava/io/InputStream;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1, p3}, Lorg/xutils/http/body/MultipartBody;->writeStreamAndCloseIn(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 150
    new-array v1, v6, [[B

    invoke-direct {p0, p1, v1}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    goto :goto_0

    .line 153
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v1, p3, [B

    if-eqz v1, :cond_6

    .line 154
    check-cast p3, [B

    .end local p3    # "value":Ljava/lang/Object;
    move-object v0, p3

    check-cast v0, [B

    .line 158
    .local v0, "content":[B
    :goto_1
    new-array v1, v4, [[B

    aput-object v0, v1, v6

    invoke-direct {p0, p1, v1}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 159
    iget-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    array-length v1, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    .line 160
    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    iget-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    iget-wide v4, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-nez v1, :cond_3

    .line 161
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v2, "upload stopped!"

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    .end local v0    # "content":[B
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_6
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0    # "content":[B
    goto :goto_1
.end method

.method private writeFile(Ljava/io/OutputStream;Ljava/io/File;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    instance-of v0, p1, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;

    if-eqz v0, :cond_0

    .line 178
    check-cast p1, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;

    .end local p1    # "out":Ljava/io/OutputStream;
    invoke-virtual {p1, p2}, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->addFile(Ljava/io/File;)V

    .line 182
    :goto_0
    return-void

    .line 180
    .restart local p1    # "out":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/MultipartBody;->writeStreamAndCloseIn(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private varargs writeLine(Ljava/io/OutputStream;[[B)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bs"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    if-eqz p2, :cond_0

    .line 169
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 170
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "b":[B
    :cond_0
    sget-object v1, Lorg/xutils/http/body/MultipartBody;->END_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 174
    return-void
.end method

.method private writeStreamAndCloseIn(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    instance-of v1, p1, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;

    if-eqz v1, :cond_0

    .line 186
    check-cast p1, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;

    .end local p1    # "out":Ljava/io/OutputStream;
    invoke-virtual {p1, p2}, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->addStream(Ljava/io/InputStream;)V

    .line 202
    :goto_0
    return-void

    .line 190
    .restart local p1    # "out":Ljava/io/OutputStream;
    :cond_0
    const/16 v1, 0x400

    :try_start_0
    new-array v0, v1, [B

    .line 191
    .local v0, "buf":[B
    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    if-ltz v7, :cond_2

    .line 192
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 193
    iget-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    int-to-long v4, v7

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    .line 194
    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    iget-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    iget-wide v4, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v2, "upload stopped!"

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v0    # "buf":[B
    .end local v7    # "len":I
    :catchall_0
    move-exception v1

    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .restart local v0    # "buf":[B
    .restart local v7    # "len":I
    :cond_2
    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 3
    .param p1, "subType"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->contentType:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, "index":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xutils/http/body/MultipartBody;->contentType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/body/MultipartBody;->contentType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setProgressHandler(Lorg/xutils/http/ProgressHandler;)V
    .locals 0
    .param p1, "progressHandler"    # Lorg/xutils/http/ProgressHandler;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    .line 59
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 92
    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    iget-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    iget-wide v4, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v2, "upload stopped!"

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->multipartParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 97
    .local v0, "kv":Lorg/xutils/common/util/KeyValue;
    iget-object v7, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 98
    .local v7, "name":Ljava/lang/String;
    iget-object v8, v0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    .line 99
    .local v8, "value":Ljava/lang/Object;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v8, :cond_1

    .line 100
    invoke-direct {p0, p1, v7, v8}, Lorg/xutils/http/body/MultipartBody;->writeEntry(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    .end local v0    # "kv":Lorg/xutils/common/util/KeyValue;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lorg/xutils/http/body/MultipartBody;->TWO_DASHES_BYTES:[B

    aput-object v3, v1, v2

    sget-object v2, Lorg/xutils/http/body/MultipartBody;->BOUNDARY_PREFIX_BYTES:[B

    aput-object v2, v1, v6

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/xutils/http/body/MultipartBody;->boundaryPostfixBytes:[B

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lorg/xutils/http/body/MultipartBody;->TWO_DASHES_BYTES:[B

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 104
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 106
    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_3

    .line 107
    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    iget-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    iget-wide v4, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    .line 109
    :cond_3
    return-void
.end method
