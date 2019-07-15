.class public Lcom/unisound/vui/transport/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/reflect/Type;

.field static final b:Ljava/lang/reflect/Type;

.field static final c:Ljava/lang/reflect/Type;

.field static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/unisound/vui/transport/c$1;

    invoke-direct {v0}, Lcom/unisound/vui/transport/c$1;-><init>()V

    invoke-virtual {v0}, Lcom/unisound/vui/transport/c$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/transport/c;->a:Ljava/lang/reflect/Type;

    new-instance v0, Lcom/unisound/vui/transport/c$2;

    invoke-direct {v0}, Lcom/unisound/vui/transport/c$2;-><init>()V

    invoke-virtual {v0}, Lcom/unisound/vui/transport/c$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/transport/c;->b:Ljava/lang/reflect/Type;

    new-instance v0, Lcom/unisound/vui/transport/c$3;

    invoke-direct {v0}, Lcom/unisound/vui/transport/c$3;-><init>()V

    invoke-virtual {v0}, Lcom/unisound/vui/transport/c$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/transport/c;->c:Ljava/lang/reflect/Type;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x100c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/transport/c;->a:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xfab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/transport/c;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xfa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/transport/c;->c:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/transport/c;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ILjava/lang/reflect/Type;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "defaultValue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/unisound/vui/transport/c;->e:Ljava/util/Map;

    iput-object p2, p0, Lcom/unisound/vui/transport/c;->f:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/unisound/vui/transport/c;-><init>(ILjava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Ljava/lang/reflect/Type;
    .locals 1

    sget-object v0, Lcom/unisound/vui/transport/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/transport/c;->f:Ljava/lang/reflect/Type;

    :cond_0
    return-object v0
.end method
