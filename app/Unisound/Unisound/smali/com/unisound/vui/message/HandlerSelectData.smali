.class public Lcom/unisound/vui/message/HandlerSelectData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private extra:Ljava/lang/String;

.field private handlerSelectType:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCancelData()Lcom/unisound/vui/message/HandlerSelectData;
    .locals 2

    new-instance v0, Lcom/unisound/vui/message/HandlerSelectData;

    invoke-direct {v0}, Lcom/unisound/vui/message/HandlerSelectData;-><init>()V

    sget-object v1, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->CANCEL:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/message/HandlerSelectData;->setHandlerSelectType(Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;)V

    return-object v0
.end method

.method public static getConfirmData()Lcom/unisound/vui/message/HandlerSelectData;
    .locals 2

    new-instance v0, Lcom/unisound/vui/message/HandlerSelectData;

    invoke-direct {v0}, Lcom/unisound/vui/message/HandlerSelectData;-><init>()V

    sget-object v1, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->CONFIRM:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/message/HandlerSelectData;->setHandlerSelectType(Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;)V

    return-object v0
.end method

.method public static getSelectItemData(I)Lcom/unisound/vui/message/HandlerSelectData;
    .locals 2
    .param p0, "index"    # I

    .prologue
    new-instance v0, Lcom/unisound/vui/message/HandlerSelectData;

    invoke-direct {v0}, Lcom/unisound/vui/message/HandlerSelectData;-><init>()V

    sget-object v1, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->ITEM:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/message/HandlerSelectData;->setHandlerSelectType(Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;)V

    invoke-virtual {v0, p0}, Lcom/unisound/vui/message/HandlerSelectData;->setIndex(I)V

    return-object v0
.end method

.method public static getSelectListData(Ljava/lang/Object;)Lcom/unisound/vui/message/HandlerSelectData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/unisound/vui/message/HandlerSelectData;"
        }
    .end annotation

    .prologue
    .local p0, "data":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/unisound/vui/message/HandlerSelectData;

    invoke-direct {v0}, Lcom/unisound/vui/message/HandlerSelectData;-><init>()V

    sget-object v1, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->LIST:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/message/HandlerSelectData;->setHandlerSelectType(Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/unisound/vui/message/HandlerSelectData;->setData(Ljava/util/List;)V

    return-object v0
.end method

.method public static getSelectListData(Ljava/util/List;)Lcom/unisound/vui/message/HandlerSelectData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;)",
            "Lcom/unisound/vui/message/HandlerSelectData;"
        }
    .end annotation

    .prologue
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v0, Lcom/unisound/vui/message/HandlerSelectData;

    invoke-direct {v0}, Lcom/unisound/vui/message/HandlerSelectData;-><init>()V

    sget-object v1, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->LIST:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/message/HandlerSelectData;->setHandlerSelectType(Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;)V

    invoke-virtual {v0, p0}, Lcom/unisound/vui/message/HandlerSelectData;->setData(Ljava/util/List;)V

    return-object v0
.end method

.method public static getSelectPageData(I)Lcom/unisound/vui/message/HandlerSelectData;
    .locals 2
    .param p0, "index"    # I

    .prologue
    new-instance v0, Lcom/unisound/vui/message/HandlerSelectData;

    invoke-direct {v0}, Lcom/unisound/vui/message/HandlerSelectData;-><init>()V

    sget-object v1, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->PAGE:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/message/HandlerSelectData;->setHandlerSelectType(Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;)V

    invoke-virtual {v0, p0}, Lcom/unisound/vui/message/HandlerSelectData;->setIndex(I)V

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/message/HandlerSelectData;->data:Ljava/util/List;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/message/HandlerSelectData;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerSelectType()Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/message/HandlerSelectData;->handlerSelectType:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/unisound/vui/message/HandlerSelectData;->index:I

    return v0
.end method

.method public isCancelData()Z
    .locals 2

    iget-object v0, p0, Lcom/unisound/vui/message/HandlerSelectData;->handlerSelectType:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    sget-object v1, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->CANCEL:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConfirmData()Z
    .locals 2

    iget-object v0, p0, Lcom/unisound/vui/message/HandlerSelectData;->handlerSelectType:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    sget-object v1, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->CONFIRM:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/message/HandlerSelectData;, "Lcom/unisound/vui/message/HandlerSelectData<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/unisound/vui/message/HandlerSelectData;->data:Ljava/util/List;

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/unisound/vui/message/HandlerSelectData;, "Lcom/unisound/vui/message/HandlerSelectData<TT;>;"
    iput-object p1, p0, Lcom/unisound/vui/message/HandlerSelectData;->extra:Ljava/lang/String;

    return-void
.end method

.method public setHandlerSelectType(Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;)V
    .locals 0
    .param p1, "handlerSelectType"    # Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    .prologue
    .local p0, "this":Lcom/unisound/vui/message/HandlerSelectData;, "Lcom/unisound/vui/message/HandlerSelectData<TT;>;"
    iput-object p1, p0, Lcom/unisound/vui/message/HandlerSelectData;->handlerSelectType:Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/unisound/vui/message/HandlerSelectData;, "Lcom/unisound/vui/message/HandlerSelectData<TT;>;"
    iput p1, p0, Lcom/unisound/vui/message/HandlerSelectData;->index:I

    return-void
.end method
