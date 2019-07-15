.class public final Lcom/unisound/lib/msgcenter/bean/ActionStatus;
.super Ljava/lang/Object;
.source "ActionStatus.java"


# static fields
.field public static final STATE_FAIL:I = -0x1

.field public static final STATE_FAIL_DETAIL:Ljava/lang/String; = "fail"

.field public static final STATE_OK:I = 0x0

.field public static final STATE_OK_DETAIL:Ljava/lang/String; = "ok"

.field private static detailMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unisound/lib/msgcenter/bean/ActionStatus;->detailMap:Ljava/util/Map;

    .line 34
    sget-object v0, Lcom/unisound/lib/msgcenter/bean/ActionStatus;->detailMap:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/unisound/lib/msgcenter/bean/ActionStatus;->detailMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ok"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStateDetail(I)Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/unisound/lib/msgcenter/bean/ActionStatus;->detailMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
