.class public final enum Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/common/media/MusicPlayer$Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RendererType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

.field public static final enum TYPE_AUDIO:Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

.field public static final enum TYPE_MUSIC:Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

.field public static final enum TYPE_RADIO:Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    const-string v1, "TYPE_MUSIC"

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;->TYPE_MUSIC:Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    new-instance v0, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    const-string v1, "TYPE_AUDIO"

    invoke-direct {v0, v1, v3}, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;->TYPE_AUDIO:Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    new-instance v0, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    const-string v1, "TYPE_RADIO"

    invoke-direct {v0, v1, v4}, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;->TYPE_RADIO:Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    sget-object v1, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;->TYPE_MUSIC:Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;->TYPE_AUDIO:Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;->TYPE_RADIO:Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;->$VALUES:[Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    return-object v0
.end method

.method public static values()[Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;
    .locals 1

    sget-object v0, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;->$VALUES:[Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    invoke-virtual {v0}, [Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    return-object v0
.end method
