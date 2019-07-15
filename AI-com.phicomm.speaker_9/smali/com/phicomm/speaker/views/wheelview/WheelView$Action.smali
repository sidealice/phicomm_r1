.class public final enum Lcom/phicomm/speaker/views/wheelview/WheelView$Action;
.super Ljava/lang/Enum;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/views/wheelview/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/phicomm/speaker/views/wheelview/WheelView$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

.field public static final enum CLICK:Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

.field public static final enum DAGGLE:Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

.field public static final enum FLING:Lcom/phicomm/speaker/views/wheelview/WheelView$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;->CLICK:Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    new-instance v0, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    const-string v1, "FLING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;->FLING:Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    new-instance v0, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    const-string v1, "DAGGLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;->DAGGLE:Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    const/4 v0, 0x3

    .line 31
    new-array v0, v0, [Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    sget-object v1, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;->CLICK:Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;->FLING:Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;->DAGGLE:Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    aput-object v1, v0, v4

    sput-object v0, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;->$VALUES:[Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phicomm/speaker/views/wheelview/WheelView$Action;
    .locals 1

    .line 31
    const-class v0, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    return-object p0
.end method

.method public static values()[Lcom/phicomm/speaker/views/wheelview/WheelView$Action;
    .locals 1

    .line 31
    sget-object v0, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;->$VALUES:[Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    invoke-virtual {v0}, [Lcom/phicomm/speaker/views/wheelview/WheelView$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    return-object v0
.end method
