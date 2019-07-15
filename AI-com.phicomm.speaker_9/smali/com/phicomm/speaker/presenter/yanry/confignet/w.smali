.class final synthetic Lcom/phicomm/speaker/presenter/yanry/confignet/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

.field private final b:Ljava/util/UUID;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u;Ljava/util/UUID;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/w;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/w;->b:Ljava/util/UUID;

    iput-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/w;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/w;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/w;->b:Ljava/util/UUID;

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/w;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Ljava/util/UUID;Ljava/lang/String;)V

    return-void
.end method
