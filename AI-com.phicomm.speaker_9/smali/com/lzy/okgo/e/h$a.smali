.class public final Lcom/lzy/okgo/e/h$a;
.super Lokio/ForwardingSink;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okgo/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lzy/okgo/e/h;

.field private b:J

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/e/h;Lokio/Sink;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/lzy/okgo/e/h$a;->a:Lcom/lzy/okgo/e/h;

    .line 73
    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    const-wide/16 p1, 0x0

    .line 67
    iput-wide p1, p0, Lcom/lzy/okgo/e/h$a;->b:J

    .line 68
    iput-wide p1, p0, Lcom/lzy/okgo/e/h$a;->c:J

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 78
    invoke-super/range {p0 .. p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 79
    iget-wide v1, v0, Lcom/lzy/okgo/e/h$a;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    iget-object v1, v0, Lcom/lzy/okgo/e/h$a;->a:Lcom/lzy/okgo/e/h;

    invoke-virtual {v1}, Lcom/lzy/okgo/e/h;->contentLength()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lzy/okgo/e/h$a;->c:J

    .line 80
    :cond_0
    iget-wide v1, v0, Lcom/lzy/okgo/e/h$a;->b:J

    add-long v7, v1, p2

    iput-wide v7, v0, Lcom/lzy/okgo/e/h$a;->b:J

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 84
    iget-wide v5, v0, Lcom/lzy/okgo/e/h$a;->d:J

    sub-long v7, v1, v5

    sget v5, Lcom/lzy/okgo/a;->a:I

    int-to-long v5, v5

    cmp-long v9, v7, v5

    if-gez v9, :cond_1

    iget-wide v5, v0, Lcom/lzy/okgo/e/h$a;->b:J

    iget-wide v7, v0, Lcom/lzy/okgo/e/h$a;->c:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_4

    .line 86
    :cond_1
    iget-wide v5, v0, Lcom/lzy/okgo/e/h$a;->d:J

    sub-long v7, v1, v5

    const-wide/16 v1, 0x3e8

    div-long/2addr v7, v1

    cmp-long v1, v7, v3

    if-nez v1, :cond_2

    const-wide/16 v1, 0x1

    add-long v3, v7, v1

    goto :goto_0

    :cond_2
    move-wide v3, v7

    .line 88
    :goto_0
    iget-wide v1, v0, Lcom/lzy/okgo/e/h$a;->b:J

    iget-wide v5, v0, Lcom/lzy/okgo/e/h$a;->e:J

    sub-long v7, v1, v5

    .line 89
    div-long v14, v7, v3

    .line 90
    iget-object v1, v0, Lcom/lzy/okgo/e/h$a;->a:Lcom/lzy/okgo/e/h;

    iget-object v1, v1, Lcom/lzy/okgo/e/h;->b:Lcom/lzy/okgo/e/h$b;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/lzy/okgo/e/h$a;->a:Lcom/lzy/okgo/e/h;

    iget-object v9, v1, Lcom/lzy/okgo/e/h;->b:Lcom/lzy/okgo/e/h$b;

    iget-wide v10, v0, Lcom/lzy/okgo/e/h$a;->b:J

    iget-wide v12, v0, Lcom/lzy/okgo/e/h$a;->c:J

    invoke-interface/range {v9 .. v15}, Lcom/lzy/okgo/e/h$b;->a(JJJ)V

    .line 92
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lzy/okgo/e/h$a;->d:J

    .line 93
    iget-wide v1, v0, Lcom/lzy/okgo/e/h$a;->b:J

    iput-wide v1, v0, Lcom/lzy/okgo/e/h$a;->e:J

    :cond_4
    return-void
.end method
