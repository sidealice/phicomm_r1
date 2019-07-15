.class public Lcom/wangjie/shadowviewhelper/ShadowProperty;
.super Ljava/lang/Object;
.source "ShadowProperty.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL:I = 0x1111

.field public static final BOTTOM:I = 0x1000

.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = 0x100

.field public static final TOP:I = 0x10


# instance fields
.field private shadowColor:I

.field private shadowDx:I

.field private shadowDy:I

.field private shadowRadius:I

.field private shadowSide:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1111

    .line 37
    iput v0, p0, Lcom/wangjie/shadowviewhelper/ShadowProperty;->shadowSide:I

    return-void
.end method


# virtual methods
.method public getShadowColor()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/wangjie/shadowviewhelper/ShadowProperty;->shadowColor:I

    return v0
.end method

.method public getShadowDx()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/wangjie/shadowviewhelper/ShadowProperty;->shadowDx:I

    return v0
.end method

.method public getShadowDy()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/wangjie/shadowviewhelper/ShadowProperty;->shadowDy:I

    return v0
.end method

.method public getShadowOffset()I
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->getShadowOffsetHalf()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getShadowOffsetHalf()I
    .locals 2

    .line 53
    iget v0, p0, Lcom/wangjie/shadowviewhelper/ShadowProperty;->shadowRadius:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/wangjie/shadowviewhelper/ShadowProperty;->shadowDx:I

    iget v1, p0, Lcom/wangjie/shadowviewhelper/ShadowProperty;->shadowDy:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/wangjie/shadowviewhelper/ShadowProperty;->shadowRadius:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getShadowRadius()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/wangjie/shadowviewhelper/ShadowProperty;->shadowRadius:I

    return v0
.end method

.method public getShadowSide()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/wangjie/shadowviewhelper/ShadowProperty;->shadowSide:I

    return v0
.end method

.method public setShadowColor(I)Lcom/wangjie/shadowviewhelper/ShadowProperty;
    .locals 0

    .line 61
    iput p1, p0, Lcom/wangjie/shadowviewhelper/ShadowProperty;->shadowColor:I

    return-object p0
.end method

.method public setShadowDx(I)Lcom/wangjie/shadowviewhelper/ShadowProperty;
    .locals 0

    .line 79
    iput p1, p0, Lcom/wangjie/shadowviewhelper/ShadowProperty;->shadowDx:I

    return-object p0
.end method

.method public setShadowDy(I)Lcom/wangjie/shadowviewhelper/ShadowProperty;
    .locals 0

    .line 88
    iput p1, p0, Lcom/wangjie/shadowviewhelper/ShadowProperty;->shadowDy:I

    return-object p0
.end method

.method public setShadowRadius(I)Lcom/wangjie/shadowviewhelper/ShadowProperty;
    .locals 0

    .line 70
    iput p1, p0, Lcom/wangjie/shadowviewhelper/ShadowProperty;->shadowRadius:I

    return-object p0
.end method

.method public setShadowSide(I)Lcom/wangjie/shadowviewhelper/ShadowProperty;
    .locals 0

    .line 44
    iput p1, p0, Lcom/wangjie/shadowviewhelper/ShadowProperty;->shadowSide:I

    return-object p0
.end method
