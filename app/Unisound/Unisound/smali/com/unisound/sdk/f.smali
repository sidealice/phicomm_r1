.class public Lcom/unisound/sdk/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x400


# instance fields
.field private b:[S

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/unisound/sdk/f;->b:[S

    return-void
.end method


# virtual methods
.method public a([SI)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([SI)",
            "Ljava/util/ArrayList",
            "<[S>;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_0
    if-lez p2, :cond_1

    iget v3, p0, Lcom/unisound/sdk/f;->c:I

    rsub-int v3, v3, 0x400

    if-gt p2, v3, :cond_0

    iget-object v3, p0, Lcom/unisound/sdk/f;->b:[S

    iget v4, p0, Lcom/unisound/sdk/f;->c:I

    invoke-static {p1, v0, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/unisound/sdk/f;->c:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/unisound/sdk/f;->c:I

    add-int/2addr v0, p2

    sub-int/2addr p2, p2

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/unisound/sdk/f;->c:I

    rsub-int v3, v3, 0x400

    iget-object v4, p0, Lcom/unisound/sdk/f;->b:[S

    iget v5, p0, Lcom/unisound/sdk/f;->c:I

    invoke-static {p1, v0, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/unisound/sdk/f;->b:[S

    invoke-virtual {v4}, [S->clone()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v1, p0, Lcom/unisound/sdk/f;->c:I

    add-int/2addr v0, v3

    sub-int/2addr p2, v3

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public a()[S
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/unisound/sdk/f;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/unisound/sdk/f;->c:I

    new-array v0, v0, [S

    iget-object v1, p0, Lcom/unisound/sdk/f;->b:[S

    iget v2, p0, Lcom/unisound/sdk/f;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
