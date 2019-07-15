.class public Lcom/unisound/vui/data/entity/a/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unisound/vui/data/entity/a/a/c;->a:Ljava/lang/String;

    sput-object v0, Lcom/unisound/vui/data/entity/a/a/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/c;->c:Ljava/lang/Long;

    iput-object p2, p0, Lcom/unisound/vui/data/entity/a/a/c;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/vui/data/entity/a/a/c;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/unisound/vui/data/entity/a/a/c;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/c;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/c;->c:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/c;->d:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/c;->e:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/c;->f:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/c;->f:Ljava/lang/String;

    return-object v0
.end method
