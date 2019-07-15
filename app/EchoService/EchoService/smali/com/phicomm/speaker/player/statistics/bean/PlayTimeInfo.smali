.class public Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;
.super Ljava/lang/Object;
.source "PlayTimeInfo.java"


# instance fields
.field private data:Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;->data:Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;

    .line 17
    return-void
.end method

.method public constructor <init>(ILcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;->data:Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;

    .line 12
    iput p1, p0, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;->type:I

    .line 13
    iput-object p2, p0, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;->data:Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;

    .line 14
    return-void
.end method


# virtual methods
.method public getData()Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;->data:Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;->type:I

    return v0
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;->type:I

    .line 25
    return-void
.end method
