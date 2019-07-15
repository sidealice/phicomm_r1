.class Lcom/unisound/lib/parse/WeatherParse;
.super Ljava/lang/Object;
.source "WeatherParse.java"

# interfaces
.implements Lcom/unisound/lib/parse/NLUParse;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseResult(Lcom/unisound/lib/msgcenter/bean/LogMessage;Lnluparser/scheme/NLU;)V
    .locals 1

    .line 14
    invoke-virtual {p2}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v0

    invoke-virtual {v0}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p2}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object p2

    invoke-virtual {p2}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object p2

    check-cast p2, Lnluparser/scheme/WeatherResult;

    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p1, p2}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setServiceData(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
