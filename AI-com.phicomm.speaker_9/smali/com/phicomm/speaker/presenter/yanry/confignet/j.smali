.class final synthetic Lcom/phicomm/speaker/presenter/yanry/confignet/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/phicomm/speaker/model/common/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Ljava/lang/String;Lcom/phicomm/speaker/model/common/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/j;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/j;->c:Lcom/phicomm/speaker/model/common/d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/j;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/j;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/j;->c:Lcom/phicomm/speaker/model/common/d;

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a(Ljava/lang/String;Lcom/phicomm/speaker/model/common/d;)V

    return-void
.end method
