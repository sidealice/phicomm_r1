.class public Lcom/phicomm/speaker/bean/IntroductionBean;
.super Ljava/lang/Object;
.source "IntroductionBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private introduction_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/Introduction;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntroduction_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/Introduction;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/phicomm/speaker/bean/IntroductionBean;->introduction_list:Ljava/util/List;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/phicomm/speaker/bean/IntroductionBean;->timestamp:J

    return-wide v0
.end method

.method public setIntroduction_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/Introduction;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/phicomm/speaker/bean/IntroductionBean;->introduction_list:Ljava/util/List;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/phicomm/speaker/bean/IntroductionBean;->timestamp:J

    return-void
.end method
