.class Lcom/unisound/lib/parse/MusicParse;
.super Ljava/lang/Object;
.source "MusicParse.java"

# interfaces
.implements Lcom/unisound/lib/parse/NLUParse;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseResult(Lcom/unisound/lib/msgcenter/bean/LogMessage;Lnluparser/scheme/NLU;)V
    .locals 1

    .line 15
    invoke-virtual {p2}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v0

    invoke-virtual {v0}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p2}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object p2

    invoke-virtual {p2}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object p2

    check-cast p2, Lnluparser/scheme/MusicResult;

    invoke-virtual {p2}, Lnluparser/scheme/MusicResult;->getMusicinfo()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 18
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnluparser/scheme/MusicResult$Music;

    .line 19
    invoke-virtual {p1, p2}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setServiceData(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
