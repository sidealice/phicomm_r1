.class final Lorg/xutils/view/ViewInfo;
.super Ljava/lang/Object;
.source "ViewInfo.java"


# instance fields
.field public parentId:I

.field public value:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14
    if-ne p0, p1, :cond_1

    .line 20
    :cond_0
    :goto_0
    return v1

    .line 15
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 17
    check-cast v0, Lorg/xutils/view/ViewInfo;

    .line 19
    .local v0, "viewInfo":Lorg/xutils/view/ViewInfo;
    iget v3, p0, Lorg/xutils/view/ViewInfo;->value:I

    iget v4, v0, Lorg/xutils/view/ViewInfo;->value:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 20
    :cond_4
    iget v3, p0, Lorg/xutils/view/ViewInfo;->parentId:I

    iget v4, v0, Lorg/xutils/view/ViewInfo;->parentId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 26
    iget v0, p0, Lorg/xutils/view/ViewInfo;->value:I

    .line 27
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/xutils/view/ViewInfo;->parentId:I

    add-int v0, v1, v2

    .line 28
    return v0
.end method
