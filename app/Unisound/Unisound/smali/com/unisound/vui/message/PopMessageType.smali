.class public final enum Lcom/unisound/vui/message/PopMessageType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/vui/message/PopMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unisound/vui/message/PopMessageType;

.field public static final enum DISMISS:Lcom/unisound/vui/message/PopMessageType;

.field public static final enum MESSAGE_WECHAT:Lcom/unisound/vui/message/PopMessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unisound/vui/message/PopMessageType;

    const-string v1, "MESSAGE_WECHAT"

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/message/PopMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/message/PopMessageType;->MESSAGE_WECHAT:Lcom/unisound/vui/message/PopMessageType;

    new-instance v0, Lcom/unisound/vui/message/PopMessageType;

    const-string v1, "DISMISS"

    invoke-direct {v0, v1, v3}, Lcom/unisound/vui/message/PopMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/message/PopMessageType;->DISMISS:Lcom/unisound/vui/message/PopMessageType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/unisound/vui/message/PopMessageType;

    sget-object v1, Lcom/unisound/vui/message/PopMessageType;->MESSAGE_WECHAT:Lcom/unisound/vui/message/PopMessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unisound/vui/message/PopMessageType;->DISMISS:Lcom/unisound/vui/message/PopMessageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/unisound/vui/message/PopMessageType;->$VALUES:[Lcom/unisound/vui/message/PopMessageType;

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unisound/vui/message/PopMessageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/unisound/vui/message/PopMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/message/PopMessageType;

    return-object v0
.end method

.method public static values()[Lcom/unisound/vui/message/PopMessageType;
    .locals 1

    sget-object v0, Lcom/unisound/vui/message/PopMessageType;->$VALUES:[Lcom/unisound/vui/message/PopMessageType;

    invoke-virtual {v0}, [Lcom/unisound/vui/message/PopMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/vui/message/PopMessageType;

    return-object v0
.end method
