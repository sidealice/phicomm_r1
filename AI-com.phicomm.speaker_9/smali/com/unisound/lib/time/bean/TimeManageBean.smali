.class public Lcom/unisound/lib/time/bean/TimeManageBean;
.super Ljava/lang/Object;
.source "TimeManageBean.java"


# instance fields
.field private alarm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/time/bean/AlarmReminder;",
            ">;"
        }
    .end annotation
.end field

.field private pageCount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/time/bean/AlarmReminder;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/unisound/lib/time/bean/TimeManageBean;->alarm:Ljava/util/List;

    return-object v0
.end method

.method public getPageCount()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/unisound/lib/time/bean/TimeManageBean;->pageCount:Ljava/lang/String;

    return-object v0
.end method

.method public setAlarm(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/time/bean/AlarmReminder;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/unisound/lib/time/bean/TimeManageBean;->alarm:Ljava/util/List;

    return-void
.end method

.method public setPageCount(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/unisound/lib/time/bean/TimeManageBean;->pageCount:Ljava/lang/String;

    return-void
.end method
