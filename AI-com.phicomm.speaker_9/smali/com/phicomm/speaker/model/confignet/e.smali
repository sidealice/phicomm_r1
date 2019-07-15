.class final synthetic Lcom/phicomm/speaker/model/confignet/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/model/confignet/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/model/confignet/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/model/confignet/e;->a:Lcom/phicomm/speaker/model/confignet/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/e;->a:Lcom/phicomm/speaker/model/confignet/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/confignet/a;->h()V

    return-void
.end method
