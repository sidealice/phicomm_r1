.class public final enum Lcom/unisound/vui/message/VoiceType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/vui/message/VoiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unisound/vui/message/VoiceType;

.field public static final enum Gone:Lcom/unisound/vui/message/VoiceType;

.field public static final enum Ignore:Lcom/unisound/vui/message/VoiceType;

.field public static final enum InVisible:Lcom/unisound/vui/message/VoiceType;

.field public static final enum ShowMic:Lcom/unisound/vui/message/VoiceType;

.field public static final enum ShowVoiceView:Lcom/unisound/vui/message/VoiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unisound/vui/message/VoiceType;

    const-string v1, "ShowVoiceView"

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/message/VoiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/message/VoiceType;->ShowVoiceView:Lcom/unisound/vui/message/VoiceType;

    new-instance v0, Lcom/unisound/vui/message/VoiceType;

    const-string v1, "ShowMic"

    invoke-direct {v0, v1, v3}, Lcom/unisound/vui/message/VoiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/message/VoiceType;->ShowMic:Lcom/unisound/vui/message/VoiceType;

    new-instance v0, Lcom/unisound/vui/message/VoiceType;

    const-string v1, "Gone"

    invoke-direct {v0, v1, v4}, Lcom/unisound/vui/message/VoiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/message/VoiceType;->Gone:Lcom/unisound/vui/message/VoiceType;

    new-instance v0, Lcom/unisound/vui/message/VoiceType;

    const-string v1, "InVisible"

    invoke-direct {v0, v1, v5}, Lcom/unisound/vui/message/VoiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/message/VoiceType;->InVisible:Lcom/unisound/vui/message/VoiceType;

    new-instance v0, Lcom/unisound/vui/message/VoiceType;

    const-string v1, "Ignore"

    invoke-direct {v0, v1, v6}, Lcom/unisound/vui/message/VoiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/message/VoiceType;->Ignore:Lcom/unisound/vui/message/VoiceType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/unisound/vui/message/VoiceType;

    sget-object v1, Lcom/unisound/vui/message/VoiceType;->ShowVoiceView:Lcom/unisound/vui/message/VoiceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unisound/vui/message/VoiceType;->ShowMic:Lcom/unisound/vui/message/VoiceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unisound/vui/message/VoiceType;->Gone:Lcom/unisound/vui/message/VoiceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unisound/vui/message/VoiceType;->InVisible:Lcom/unisound/vui/message/VoiceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unisound/vui/message/VoiceType;->Ignore:Lcom/unisound/vui/message/VoiceType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/unisound/vui/message/VoiceType;->$VALUES:[Lcom/unisound/vui/message/VoiceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unisound/vui/message/VoiceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/unisound/vui/message/VoiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/message/VoiceType;

    return-object v0
.end method

.method public static values()[Lcom/unisound/vui/message/VoiceType;
    .locals 1

    sget-object v0, Lcom/unisound/vui/message/VoiceType;->$VALUES:[Lcom/unisound/vui/message/VoiceType;

    invoke-virtual {v0}, [Lcom/unisound/vui/message/VoiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/vui/message/VoiceType;

    return-object v0
.end method
