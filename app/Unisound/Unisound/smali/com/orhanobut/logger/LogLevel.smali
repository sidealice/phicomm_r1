.class public final enum Lcom/orhanobut/logger/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/orhanobut/logger/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/orhanobut/logger/LogLevel;

.field public static final enum FULL:Lcom/orhanobut/logger/LogLevel;

.field public static final enum NONE:Lcom/orhanobut/logger/LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/orhanobut/logger/LogLevel;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v2}, Lcom/orhanobut/logger/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orhanobut/logger/LogLevel;->FULL:Lcom/orhanobut/logger/LogLevel;

    .line 13
    new-instance v0, Lcom/orhanobut/logger/LogLevel;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/orhanobut/logger/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orhanobut/logger/LogLevel;->NONE:Lcom/orhanobut/logger/LogLevel;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/orhanobut/logger/LogLevel;

    sget-object v1, Lcom/orhanobut/logger/LogLevel;->FULL:Lcom/orhanobut/logger/LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/orhanobut/logger/LogLevel;->NONE:Lcom/orhanobut/logger/LogLevel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/orhanobut/logger/LogLevel;->$VALUES:[Lcom/orhanobut/logger/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/orhanobut/logger/LogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/orhanobut/logger/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/orhanobut/logger/LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/orhanobut/logger/LogLevel;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/orhanobut/logger/LogLevel;->$VALUES:[Lcom/orhanobut/logger/LogLevel;

    invoke-virtual {v0}, [Lcom/orhanobut/logger/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/orhanobut/logger/LogLevel;

    return-object v0
.end method
