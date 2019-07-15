.class public final enum Lcom/unisound/vui/handler/session/chat/ChatStatus;
.super Ljava/lang/Enum;
.source "ChatStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/vui/handler/session/chat/ChatStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unisound/vui/handler/session/chat/ChatStatus;

.field public static final enum HIGH_SPEED_STYLE:Lcom/unisound/vui/handler/session/chat/ChatStatus;

.field public static final enum MAYBE_NOISE_STYLE:Lcom/unisound/vui/handler/session/chat/ChatStatus;

.field public static final enum MAYBE_NOISE_STYLE_MAX:Lcom/unisound/vui/handler/session/chat/ChatStatus;

.field public static final enum SCENEMODE_CONTROL:Lcom/unisound/vui/handler/session/chat/ChatStatus;

.field public static final enum SUPPORT_STYLE:Lcom/unisound/vui/handler/session/chat/ChatStatus;

.field public static final enum SUPPORT_STYLE_MAX:Lcom/unisound/vui/handler/session/chat/ChatStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/unisound/vui/handler/session/chat/ChatStatus;

    const-string v1, "SUPPORT_STYLE"

    invoke-direct {v0, v1, v3}, Lcom/unisound/vui/handler/session/chat/ChatStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/chat/ChatStatus;->SUPPORT_STYLE:Lcom/unisound/vui/handler/session/chat/ChatStatus;

    new-instance v0, Lcom/unisound/vui/handler/session/chat/ChatStatus;

    const-string v1, "SUPPORT_STYLE_MAX"

    invoke-direct {v0, v1, v4}, Lcom/unisound/vui/handler/session/chat/ChatStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/chat/ChatStatus;->SUPPORT_STYLE_MAX:Lcom/unisound/vui/handler/session/chat/ChatStatus;

    new-instance v0, Lcom/unisound/vui/handler/session/chat/ChatStatus;

    const-string v1, "MAYBE_NOISE_STYLE"

    invoke-direct {v0, v1, v5}, Lcom/unisound/vui/handler/session/chat/ChatStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/chat/ChatStatus;->MAYBE_NOISE_STYLE:Lcom/unisound/vui/handler/session/chat/ChatStatus;

    new-instance v0, Lcom/unisound/vui/handler/session/chat/ChatStatus;

    const-string v1, "MAYBE_NOISE_STYLE_MAX"

    invoke-direct {v0, v1, v6}, Lcom/unisound/vui/handler/session/chat/ChatStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/chat/ChatStatus;->MAYBE_NOISE_STYLE_MAX:Lcom/unisound/vui/handler/session/chat/ChatStatus;

    new-instance v0, Lcom/unisound/vui/handler/session/chat/ChatStatus;

    const-string v1, "HIGH_SPEED_STYLE"

    invoke-direct {v0, v1, v7}, Lcom/unisound/vui/handler/session/chat/ChatStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/chat/ChatStatus;->HIGH_SPEED_STYLE:Lcom/unisound/vui/handler/session/chat/ChatStatus;

    .line 8
    new-instance v0, Lcom/unisound/vui/handler/session/chat/ChatStatus;

    const-string v1, "SCENEMODE_CONTROL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/handler/session/chat/ChatStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/chat/ChatStatus;->SCENEMODE_CONTROL:Lcom/unisound/vui/handler/session/chat/ChatStatus;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/unisound/vui/handler/session/chat/ChatStatus;

    sget-object v1, Lcom/unisound/vui/handler/session/chat/ChatStatus;->SUPPORT_STYLE:Lcom/unisound/vui/handler/session/chat/ChatStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unisound/vui/handler/session/chat/ChatStatus;->SUPPORT_STYLE_MAX:Lcom/unisound/vui/handler/session/chat/ChatStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unisound/vui/handler/session/chat/ChatStatus;->MAYBE_NOISE_STYLE:Lcom/unisound/vui/handler/session/chat/ChatStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unisound/vui/handler/session/chat/ChatStatus;->MAYBE_NOISE_STYLE_MAX:Lcom/unisound/vui/handler/session/chat/ChatStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unisound/vui/handler/session/chat/ChatStatus;->HIGH_SPEED_STYLE:Lcom/unisound/vui/handler/session/chat/ChatStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unisound/vui/handler/session/chat/ChatStatus;->SCENEMODE_CONTROL:Lcom/unisound/vui/handler/session/chat/ChatStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unisound/vui/handler/session/chat/ChatStatus;->$VALUES:[Lcom/unisound/vui/handler/session/chat/ChatStatus;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unisound/vui/handler/session/chat/ChatStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/unisound/vui/handler/session/chat/ChatStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/chat/ChatStatus;

    return-object v0
.end method

.method public static values()[Lcom/unisound/vui/handler/session/chat/ChatStatus;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/unisound/vui/handler/session/chat/ChatStatus;->$VALUES:[Lcom/unisound/vui/handler/session/chat/ChatStatus;

    invoke-virtual {v0}, [Lcom/unisound/vui/handler/session/chat/ChatStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/vui/handler/session/chat/ChatStatus;

    return-object v0
.end method
