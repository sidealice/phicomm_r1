.class Lcom/huawei/hms/update/b/f;
.super Ljava/io/OutputStream;


# instance fields
.field a:J

.field b:I

.field final synthetic c:Ljava/io/RandomAccessFile;

.field final synthetic d:Lcom/huawei/hms/update/b/e$b;


# direct methods
.method constructor <init>(Lcom/huawei/hms/update/b/e$b;Ljava/io/RandomAccessFile;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/update/b/f;->d:Lcom/huawei/hms/update/b/e$b;

    iput-object p2, p0, Lcom/huawei/hms/update/b/f;->c:Ljava/io/RandomAccessFile;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/huawei/hms/update/b/f;->a:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/huawei/hms/update/b/f;->b:I

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/huawei/hms/update/b/f;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/update/b/f;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget p1, p0, Lcom/huawei/hms/update/b/f;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/huawei/hms/update/b/f;->b:I

    iget-object p1, p0, Lcom/huawei/hms/update/b/f;->d:Lcom/huawei/hms/update/b/e$b;

    invoke-static {p1}, Lcom/huawei/hms/update/b/e$b;->a(Lcom/huawei/hms/update/b/e$b;)Lcom/huawei/hms/update/b/c;

    move-result-object p1

    iget p2, p0, Lcom/huawei/hms/update/b/f;->b:I

    invoke-virtual {p1, p2}, Lcom/huawei/hms/update/b/c;->a(I)I

    move-result p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/huawei/hms/update/b/f;->a:J

    sub-long v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    const/16 v0, 0xc9

    if-lez v4, :cond_0

    iput-wide p2, p0, Lcom/huawei/hms/update/b/f;->a:J

    iget-object p2, p0, Lcom/huawei/hms/update/b/f;->d:Lcom/huawei/hms/update/b/e$b;

    iget-object p3, p0, Lcom/huawei/hms/update/b/f;->d:Lcom/huawei/hms/update/b/e$b;

    invoke-static {p3}, Lcom/huawei/hms/update/b/e$b;->b(Lcom/huawei/hms/update/b/e$b;)Lcom/huawei/hms/update/b/a/d;

    move-result-object p3

    iget p3, p3, Lcom/huawei/hms/update/b/a/d;->c:I

    invoke-virtual {p2, v0, p1, p3}, Lcom/huawei/hms/update/b/e$b;->a(III)V

    :cond_0
    iget-object p2, p0, Lcom/huawei/hms/update/b/f;->d:Lcom/huawei/hms/update/b/e$b;

    invoke-static {p2}, Lcom/huawei/hms/update/b/e$b;->b(Lcom/huawei/hms/update/b/e$b;)Lcom/huawei/hms/update/b/a/d;

    move-result-object p2

    iget p2, p2, Lcom/huawei/hms/update/b/a/d;->c:I

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/huawei/hms/update/b/f;->d:Lcom/huawei/hms/update/b/e$b;

    iget-object p3, p0, Lcom/huawei/hms/update/b/f;->d:Lcom/huawei/hms/update/b/e$b;

    invoke-static {p3}, Lcom/huawei/hms/update/b/e$b;->b(Lcom/huawei/hms/update/b/e$b;)Lcom/huawei/hms/update/b/a/d;

    move-result-object p3

    iget p3, p3, Lcom/huawei/hms/update/b/a/d;->c:I

    invoke-virtual {p2, v0, p1, p3}, Lcom/huawei/hms/update/b/e$b;->a(III)V

    :cond_1
    return-void
.end method
