.class public Lorg/apache/thrift/protocol/h;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lorg/apache/thrift/protocol/e;B)V
    .locals 1

    sget v0, Lorg/apache/thrift/protocol/h;->a:I

    invoke-static {p0, p1, v0}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;BI)V

    return-void
.end method

.method public static a(Lorg/apache/thrift/protocol/e;BI)V
    .locals 3

    if-gtz p2, :cond_0

    new-instance p0, Lorg/apache/thrift/f;

    const-string p1, "Maximum skip depth exceeded"

    invoke-direct {p0, p1}, Lorg/apache/thrift/f;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/e;->m()Lorg/apache/thrift/protocol/c;

    move-result-object p1

    :goto_0
    iget v1, p1, Lorg/apache/thrift/protocol/c;->b:I

    if-ge v0, v1, :cond_1

    iget-byte v1, p1, Lorg/apache/thrift/protocol/c;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/e;->n()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/e;->o()Lorg/apache/thrift/protocol/i;

    move-result-object p1

    :goto_1
    iget v1, p1, Lorg/apache/thrift/protocol/i;->b:I

    if-ge v0, v1, :cond_2

    iget-byte v1, p1, Lorg/apache/thrift/protocol/i;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/e;->p()V

    return-void

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/e;->k()Lorg/apache/thrift/protocol/d;

    move-result-object p1

    :goto_2
    iget v1, p1, Lorg/apache/thrift/protocol/d;->c:I

    if-ge v0, v1, :cond_3

    iget-byte v1, p1, Lorg/apache/thrift/protocol/d;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;BI)V

    iget-byte v1, p1, Lorg/apache/thrift/protocol/d;->b:B

    invoke-static {p0, v1, v2}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/e;->l()V

    return-void

    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/e;->g()Lorg/apache/thrift/protocol/j;

    :goto_3
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/e;->i()Lorg/apache/thrift/protocol/b;

    move-result-object p1

    iget-byte v0, p1, Lorg/apache/thrift/protocol/b;->b:B

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/e;->h()V

    return-void

    :cond_4
    iget-byte p1, p1, Lorg/apache/thrift/protocol/b;->b:B

    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;BI)V

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/e;->j()V

    goto :goto_3

    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/e;->x()Ljava/nio/ByteBuffer;

    return-void

    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/e;->u()J

    return-void

    :pswitch_7
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/e;->t()I

    return-void

    :pswitch_8
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/e;->s()S

    return-void

    :pswitch_9
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/e;->v()D

    return-void

    :pswitch_a
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/e;->r()B

    return-void

    :pswitch_b
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/e;->q()Z

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
