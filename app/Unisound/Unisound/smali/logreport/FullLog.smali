.class public Llogreport/FullLog;
.super Ljava/lang/Object;


# instance fields
.field private nlu:Lnluparser/scheme/NLU;

.field private ttsData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnluparser/scheme/NLU;Ljava/lang/String;)V
    .locals 0
    .param p1, "nlu"    # Lnluparser/scheme/NLU;
    .param p2, "ttsData"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llogreport/FullLog;->nlu:Lnluparser/scheme/NLU;

    iput-object p2, p0, Llogreport/FullLog;->ttsData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNlu()Lnluparser/scheme/NLU;
    .locals 1

    iget-object v0, p0, Llogreport/FullLog;->nlu:Lnluparser/scheme/NLU;

    return-object v0
.end method

.method public getTtsData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llogreport/FullLog;->ttsData:Ljava/lang/String;

    return-object v0
.end method

.method public setNlu(Lnluparser/scheme/NLU;)V
    .locals 0
    .param p1, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    iput-object p1, p0, Llogreport/FullLog;->nlu:Lnluparser/scheme/NLU;

    return-void
.end method

.method public setTtsData(Ljava/lang/String;)V
    .locals 0
    .param p1, "ttsData"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Llogreport/FullLog;->ttsData:Ljava/lang/String;

    return-void
.end method
