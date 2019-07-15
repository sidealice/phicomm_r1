.class public Lcom/xiaomi/b/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/lang/String;

.field private static c:J

.field private static final f:[B


# instance fields
.field a:Ljava/lang/String;

.field private d:Lcom/xiaomi/push/a/b$a;

.field private e:S

.field private g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/xiaomi/smack/d/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/b/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/xiaomi/b/b;->f:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-short v0, p0, Lcom/xiaomi/b/b;->e:S

    sget-object v0, Lcom/xiaomi/b/b;->f:[B

    iput-object v0, p0, Lcom/xiaomi/b/b;->g:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/b/b;->a:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/push/a/b$a;

    invoke-direct {v0}, Lcom/xiaomi/push/a/b$a;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/push/a/b$a;S[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-short v0, p0, Lcom/xiaomi/b/b;->e:S

    sget-object v0, Lcom/xiaomi/b/b;->f:[B

    iput-object v0, p0, Lcom/xiaomi/b/b;->g:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/b/b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    iput-short p2, p0, Lcom/xiaomi/b/b;->e:S

    iput-object p3, p0, Lcom/xiaomi/b/b;->g:[B

    return-void
.end method

.method public static a(Lcom/xiaomi/smack/packet/d;Ljava/lang/String;)Lcom/xiaomi/b/b;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/xiaomi/b/b;

    invoke-direct {v0}, Lcom/xiaomi/b/b;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blob parse chid err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaomi/b/b;->a(I)V

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/b;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/b;->b(Ljava/lang/String;)V

    const-string v1, "XMLMSG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->c()Ljava/lang/String;

    move-result-object p0

    const-string v1, "utf8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/b/b;->a([BLjava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Lcom/xiaomi/b/b;->a(S)V

    return-object v0

    :cond_0
    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/xiaomi/b/b;->a(S)V

    const-string p0, "SECMSG"

    invoke-virtual {v0, p0, v2}, Lcom/xiaomi/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blob setPayload err\uff1a "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method static b(Ljava/nio/ByteBuffer;)Lcom/xiaomi/b/b;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    const/16 v2, -0x3d02

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    new-instance v4, Lcom/xiaomi/push/a/b$a;

    invoke-direct {v4}, Lcom/xiaomi/push/a/b$a;-><init>()V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/16 v6, 0xe

    invoke-virtual {v4, v5, v6, v2}, Lcom/xiaomi/push/a/b$a;->b([BII)Lcom/google/protobuf/micro/e;

    new-array v5, v3, [B

    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v5, v0, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance p0, Lcom/xiaomi/b/b;

    invoke-direct {p0, v4, v1, v5}, Lcom/xiaomi/b/b;-><init>(Lcom/xiaomi/push/a/b$a;S[B)V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Malformed Input"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "read Blob err :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    new-instance p0, Ljava/io/IOException;

    const-string v0, "Malformed Input"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static c(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static declared-synchronized g()Ljava/lang/String;
    .locals 8

    const-class v0, Lcom/xiaomi/b/b;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/b/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/xiaomi/b/b;->c:J

    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    sput-wide v6, Lcom/xiaomi/b/b;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static n()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/a/b$a;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 6

    invoke-virtual {p0}, Lcom/xiaomi/b/b;->l()I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v0, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_2
    move-object p1, v0

    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, -0x3d02

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/xiaomi/b/b;->e:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/a/b$a;->a()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/xiaomi/b/b;->g:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v5}, Lcom/xiaomi/push/a/b$a;->a()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaomi/push/a/b$a;->a([BII)V

    iget-object v2, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v2}, Lcom/xiaomi/push/a/b$a;->a()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/xiaomi/b/b;->g:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/a/b$a;->a(I)Lcom/xiaomi/push/a/b$a;

    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/a/b$a;->a(J)Lcom/xiaomi/push/a/b$a;

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {p1, p3}, Lcom/xiaomi/push/a/b$a;->a(Ljava/lang/String;)Lcom/xiaomi/push/a/b$a;

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {p1, p4}, Lcom/xiaomi/push/a/b$a;->b(Ljava/lang/String;)Lcom/xiaomi/push/a/b$a;

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/a/b$a;->e(Ljava/lang/String;)Lcom/xiaomi/push/a/b$a;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "command should not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/a/b$a;->c(Ljava/lang/String;)Lcom/xiaomi/push/a/b$a;

    iget-object p1, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {p1}, Lcom/xiaomi/push/a/b$a;->p()Lcom/xiaomi/push/a/b$a;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {p1, p2}, Lcom/xiaomi/push/a/b$a;->d(Ljava/lang/String;)Lcom/xiaomi/push/a/b$a;

    :cond_1
    return-void
.end method

.method public a(S)V
    .locals 0

    iput-short p1, p0, Lcom/xiaomi/b/b;->e:S

    return-void
.end method

.method public a([BLjava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/a/b$a;->c(I)Lcom/xiaomi/push/a/b$a;

    invoke-virtual {p0}, Lcom/xiaomi/b/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaomi/push/service/r;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2, p1}, Lcom/xiaomi/push/service/r;->a([B[B)[B

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/xiaomi/b/b;->g:[B

    return-void

    :cond_0
    iget-object p2, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/xiaomi/push/a/b$a;->c(I)Lcom/xiaomi/push/a/b$a;

    goto :goto_0

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/a/b$a;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/a/b$a;->d()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "/"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v3, v1, v2}, Lcom/xiaomi/push/a/b$a;->a(J)Lcom/xiaomi/push/a/b$a;

    iget-object v1, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/a/b$a;->a(Ljava/lang/String;)Lcom/xiaomi/push/a/b$a;

    iget-object v0, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/a/b$a;->b(Ljava/lang/String;)Lcom/xiaomi/push/a/b$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blob parse user err "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/a/b$a;->x()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)[B
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/a/b$a;->u()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/push/service/r;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/b/b;->g:[B

    invoke-static {p1, v0}, Lcom/xiaomi/push/service/r;->a([B[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {p1}, Lcom/xiaomi/push/a/b$a;->u()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/b/b;->g:[B

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknow cipher = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/a/b$a;->u()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/b/b;->g:[B

    return-object p1
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/a/b$a;->w()I

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/a/b$a;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/a/b$a;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ID_NOT_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/a/b$a;->r()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/xiaomi/b/b;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/a/b$a;->e(Ljava/lang/String;)Lcom/xiaomi/push/a/b$a;

    :cond_1
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/a/b$a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/a/b$a;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/a/b$a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/a/b$a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/b;->g:[B

    return-object v0
.end method

.method public l()I
    .locals 2

    invoke-static {}, Lcom/xiaomi/b/b;->n()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/b/b;->d:Lcom/xiaomi/push/a/b$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/a/b$a;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/b/b;->g:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public m()S
    .locals 1

    iget-short v0, p0, Lcom/xiaomi/b/b;->e:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blob [chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/b/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/b/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/b/b;->m()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/b/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
