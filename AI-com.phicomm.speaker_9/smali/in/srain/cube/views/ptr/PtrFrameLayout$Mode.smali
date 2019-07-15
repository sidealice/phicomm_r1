.class public final enum Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;
.super Ljava/lang/Enum;
.source "PtrFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/ptr/PtrFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

.field public static final enum BOTH:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

.field public static final enum LOAD_MORE:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

.field public static final enum NONE:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

.field public static final enum REFRESH:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->NONE:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    const-string v1, "REFRESH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->REFRESH:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    const-string v1, "LOAD_MORE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->LOAD_MORE:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    const-string v1, "BOTH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->BOTH:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    const/4 v0, 0x4

    .line 22
    new-array v0, v0, [Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    sget-object v1, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->NONE:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->REFRESH:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->LOAD_MORE:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->BOTH:Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    aput-object v1, v0, v5

    sput-object v0, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->$VALUES:[Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;
    .locals 1

    .line 22
    const-class v0, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    return-object p0
.end method

.method public static values()[Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;
    .locals 1

    .line 22
    sget-object v0, Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->$VALUES:[Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    invoke-virtual {v0}, [Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/srain/cube/views/ptr/PtrFrameLayout$Mode;

    return-object v0
.end method
