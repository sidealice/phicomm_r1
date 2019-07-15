.class final Lorg/xutils/view/b;
.super Ljava/lang/Object;
.source "ViewInfo.java"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lorg/xutils/view/b;

    .line 19
    iget v2, p0, Lorg/xutils/view/b;->a:I

    iget v3, p1, Lorg/xutils/view/b;->a:I

    if-eq v2, v3, :cond_2

    return v1

    .line 20
    :cond_2
    iget v2, p0, Lorg/xutils/view/b;->b:I

    iget p1, p1, Lorg/xutils/view/b;->b:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 26
    iget v0, p0, Lorg/xutils/view/b;->a:I

    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    .line 27
    iget v0, p0, Lorg/xutils/view/b;->b:I

    add-int/2addr v1, v0

    return v1
.end method
