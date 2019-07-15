.class public final enum Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;
.super Ljava/lang/Enum;
.source "CommonPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RendererType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

.field public static final enum TYPE_AUDIO:Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

.field public static final enum TYPE_MUSIC:Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

.field public static final enum TYPE_RADIO:Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    new-instance v0, Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

    const-string v1, "TYPE_MUSIC"

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;->TYPE_MUSIC:Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

    new-instance v0, Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

    const-string v1, "TYPE_AUDIO"

    invoke-direct {v0, v1, v3}, Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;->TYPE_AUDIO:Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

    new-instance v0, Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

    const-string v1, "TYPE_RADIO"

    invoke-direct {v0, v1, v4}, Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;->TYPE_RADIO:Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

    .line 151
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

    sget-object v1, Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;->TYPE_MUSIC:Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;->TYPE_AUDIO:Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;->TYPE_RADIO:Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;->$VALUES:[Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

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
    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    const-class v0, Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

    return-object v0
.end method

.method public static values()[Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;->$VALUES:[Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

    invoke-virtual {v0}, [Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/vui/handler/session/music/CommonPlayer$Renderer$RendererType;

    return-object v0
.end method
