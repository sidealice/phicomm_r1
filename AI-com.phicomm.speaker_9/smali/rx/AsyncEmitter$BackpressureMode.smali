.class public final enum Lrx/AsyncEmitter$BackpressureMode;
.super Ljava/lang/Enum;
.source "AsyncEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/AsyncEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackpressureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrx/AsyncEmitter$BackpressureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/AsyncEmitter$BackpressureMode;

.field public static final enum BUFFER:Lrx/AsyncEmitter$BackpressureMode;

.field public static final enum DROP:Lrx/AsyncEmitter$BackpressureMode;

.field public static final enum ERROR:Lrx/AsyncEmitter$BackpressureMode;

.field public static final enum LATEST:Lrx/AsyncEmitter$BackpressureMode;

.field public static final enum NONE:Lrx/AsyncEmitter$BackpressureMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 80
    new-instance v0, Lrx/AsyncEmitter$BackpressureMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/AsyncEmitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->NONE:Lrx/AsyncEmitter$BackpressureMode;

    .line 84
    new-instance v0, Lrx/AsyncEmitter$BackpressureMode;

    const-string v1, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lrx/AsyncEmitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->ERROR:Lrx/AsyncEmitter$BackpressureMode;

    .line 88
    new-instance v0, Lrx/AsyncEmitter$BackpressureMode;

    const-string v1, "BUFFER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lrx/AsyncEmitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->BUFFER:Lrx/AsyncEmitter$BackpressureMode;

    .line 92
    new-instance v0, Lrx/AsyncEmitter$BackpressureMode;

    const-string v1, "DROP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lrx/AsyncEmitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->DROP:Lrx/AsyncEmitter$BackpressureMode;

    .line 97
    new-instance v0, Lrx/AsyncEmitter$BackpressureMode;

    const-string v1, "LATEST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lrx/AsyncEmitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->LATEST:Lrx/AsyncEmitter$BackpressureMode;

    const/4 v0, 0x5

    .line 74
    new-array v0, v0, [Lrx/AsyncEmitter$BackpressureMode;

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->NONE:Lrx/AsyncEmitter$BackpressureMode;

    aput-object v1, v0, v2

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->ERROR:Lrx/AsyncEmitter$BackpressureMode;

    aput-object v1, v0, v3

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->BUFFER:Lrx/AsyncEmitter$BackpressureMode;

    aput-object v1, v0, v4

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->DROP:Lrx/AsyncEmitter$BackpressureMode;

    aput-object v1, v0, v5

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->LATEST:Lrx/AsyncEmitter$BackpressureMode;

    aput-object v1, v0, v6

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->$VALUES:[Lrx/AsyncEmitter$BackpressureMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/AsyncEmitter$BackpressureMode;
    .locals 1

    .line 74
    const-class v0, Lrx/AsyncEmitter$BackpressureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrx/AsyncEmitter$BackpressureMode;

    return-object p0
.end method

.method public static values()[Lrx/AsyncEmitter$BackpressureMode;
    .locals 1

    .line 74
    sget-object v0, Lrx/AsyncEmitter$BackpressureMode;->$VALUES:[Lrx/AsyncEmitter$BackpressureMode;

    invoke-virtual {v0}, [Lrx/AsyncEmitter$BackpressureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/AsyncEmitter$BackpressureMode;

    return-object v0
.end method
