.class public Lcom/phicomm/speaker/bean/Introduction;
.super Ljava/lang/Object;
.source "Introduction.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private introduction_content:Ljava/lang/String;

.field private introduction_publish_time:J

.field private introduction_title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntroduction_content()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/phicomm/speaker/bean/Introduction;->introduction_content:Ljava/lang/String;

    return-object v0
.end method

.method public getIntroduction_publish_time()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/phicomm/speaker/bean/Introduction;->introduction_publish_time:J

    return-wide v0
.end method

.method public getIntroduction_title()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/phicomm/speaker/bean/Introduction;->introduction_title:Ljava/lang/String;

    return-object v0
.end method

.method public setIntroduction_content(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/phicomm/speaker/bean/Introduction;->introduction_content:Ljava/lang/String;

    return-void
.end method

.method public setIntroduction_publish_time(J)V
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/phicomm/speaker/bean/Introduction;->introduction_publish_time:J

    return-void
.end method

.method public setIntroduction_title(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/phicomm/speaker/bean/Introduction;->introduction_title:Ljava/lang/String;

    return-void
.end method
