.class public Lcom/unisound/lib/device/WakeupWordParam;
.super Lcom/unisound/lib/msgcenter/bean/BaseInfo;
.source "WakeupWordParam.java"


# instance fields
.field private baseScore:Ljava/lang/String;

.field private wakeups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseScore()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/unisound/lib/device/WakeupWordParam;->baseScore:Ljava/lang/String;

    return-object v0
.end method

.method public getWakeups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/unisound/lib/device/WakeupWordParam;->wakeups:Ljava/util/List;

    return-object v0
.end method

.method public setBaseScore(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/unisound/lib/device/WakeupWordParam;->baseScore:Ljava/lang/String;

    return-void
.end method

.method public setWakeups(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/unisound/lib/device/WakeupWordParam;->wakeups:Ljava/util/List;

    return-void
.end method
