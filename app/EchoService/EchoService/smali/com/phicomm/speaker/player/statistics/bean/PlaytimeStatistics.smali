.class public Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;
.super Ljava/lang/Object;
.source "PlaytimeStatistics.java"


# instance fields
.field private begin:Ljava/lang/String;

.field private end:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "0"

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;->begin:Ljava/lang/String;

    .line 9
    const-string v0, "0"

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;->end:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "begin"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "0"

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;->begin:Ljava/lang/String;

    .line 9
    const-string v0, "0"

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;->end:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;->begin:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;->end:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getBegin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;->begin:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;->end:Ljava/lang/String;

    return-object v0
.end method

.method public setBegin(Ljava/lang/String;)V
    .locals 0
    .param p1, "begin"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;->begin:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setEnd(Ljava/lang/String;)V
    .locals 0
    .param p1, "end"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;->end:Ljava/lang/String;

    .line 33
    return-void
.end method
