.class public Lcom/jph/takephoto/model/LubanOptions;
.super Ljava/lang/Object;
.source "LubanOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jph/takephoto/model/LubanOptions$Builder;
    }
.end annotation


# instance fields
.field private maxHeight:I

.field private maxSize:I

.field private maxWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jph/takephoto/model/LubanOptions$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/jph/takephoto/model/LubanOptions;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxHeight()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/jph/takephoto/model/LubanOptions;->maxHeight:I

    return v0
.end method

.method public getMaxSize()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/jph/takephoto/model/LubanOptions;->maxSize:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/jph/takephoto/model/LubanOptions;->maxWidth:I

    return v0
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/jph/takephoto/model/LubanOptions;->maxHeight:I

    return-void
.end method

.method public setMaxSize(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/jph/takephoto/model/LubanOptions;->maxSize:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/jph/takephoto/model/LubanOptions;->maxWidth:I

    return-void
.end method
