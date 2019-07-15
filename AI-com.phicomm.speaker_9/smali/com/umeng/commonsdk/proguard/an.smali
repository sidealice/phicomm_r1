.class public Lcom/umeng/commonsdk/proguard/an;
.super Ljava/lang/Object;
.source "TProtocolUtil.java"


# static fields
.field private static a:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLcom/umeng/commonsdk/proguard/am;)Lcom/umeng/commonsdk/proguard/am;
    .locals 2

    const/4 v0, 0x0

    .line 171
    aget-byte v0, p0, v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 172
    new-instance p0, Lcom/umeng/commonsdk/proguard/ae$a;

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/ae$a;-><init>()V

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 185
    array-length v1, p0

    if-le v1, v0, :cond_1

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1

    .line 186
    new-instance p0, Lcom/umeng/commonsdk/proguard/ae$a;

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/ae$a;-><init>()V

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static a(I)V
    .locals 0

    .line 49
    sput p0, Lcom/umeng/commonsdk/proguard/an;->a:I

    return-void
.end method

.method public static a(Lcom/umeng/commonsdk/proguard/ak;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 60
    sget v0, Lcom/umeng/commonsdk/proguard/an;->a:I

    invoke-static {p0, p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;BI)V

    return-void
.end method

.method public static a(Lcom/umeng/commonsdk/proguard/ak;BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    if-gtz p2, :cond_0

    .line 74
    new-instance p0, Lcom/umeng/commonsdk/proguard/r;

    const-string p1, "Maximum skip depth exceeded"

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/r;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 136
    :pswitch_1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->p()Lcom/umeng/commonsdk/proguard/ag;

    move-result-object p1

    .line 137
    :goto_0
    iget v1, p1, Lcom/umeng/commonsdk/proguard/ag;->b:I

    if-ge v0, v1, :cond_1

    .line 138
    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/ag;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->q()V

    goto/16 :goto_4

    .line 128
    :pswitch_2
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->r()Lcom/umeng/commonsdk/proguard/ao;

    move-result-object p1

    .line 129
    :goto_1
    iget v1, p1, Lcom/umeng/commonsdk/proguard/ao;->b:I

    if-ge v0, v1, :cond_2

    .line 130
    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/ao;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->s()V

    goto :goto_4

    .line 119
    :pswitch_3
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->n()Lcom/umeng/commonsdk/proguard/ah;

    move-result-object p1

    .line 120
    :goto_2
    iget v1, p1, Lcom/umeng/commonsdk/proguard/ah;->c:I

    if-ge v0, v1, :cond_3

    .line 121
    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/ah;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;BI)V

    .line 122
    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/ah;->b:B

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->o()V

    goto :goto_4

    .line 106
    :pswitch_4
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->j()Lcom/umeng/commonsdk/proguard/ap;

    .line 108
    :goto_3
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->l()Lcom/umeng/commonsdk/proguard/af;

    move-result-object p1

    .line 109
    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/af;->b:B

    if-nez v0, :cond_4

    .line 115
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->k()V

    goto :goto_4

    .line 112
    :cond_4
    iget-byte p1, p1, Lcom/umeng/commonsdk/proguard/af;->b:B

    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Lcom/umeng/commonsdk/proguard/an;->a(Lcom/umeng/commonsdk/proguard/ak;BI)V

    .line 113
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->m()V

    goto :goto_3

    .line 102
    :pswitch_5
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->A()Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 94
    :pswitch_6
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->x()J

    goto :goto_4

    .line 90
    :pswitch_7
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->w()I

    goto :goto_4

    .line 86
    :pswitch_8
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->v()S

    goto :goto_4

    .line 98
    :pswitch_9
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->y()D

    goto :goto_4

    .line 82
    :pswitch_a
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->u()B

    goto :goto_4

    .line 78
    :pswitch_b
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->t()Z

    :goto_4
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
