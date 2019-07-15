.class public Lcom/unisound/common/au;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x1


# instance fields
.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/common/au;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/unisound/common/au;->b:I

    return v0
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/unisound/common/au;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unisound/common/au;->b:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/unisound/common/au;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/unisound/common/au;->b:I

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lcom/unisound/common/au;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
