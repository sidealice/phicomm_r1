.class Lcn/kuwo/autosdk/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/kuwo/autosdk/k;

.field private final synthetic b:Lcn/kuwo/autosdk/api/SearchStatus;

.field private final synthetic c:Z

.field private final synthetic d:Ljava/util/List;

.field private final synthetic e:Z


# direct methods
.method constructor <init>(Lcn/kuwo/autosdk/k;Lcn/kuwo/autosdk/api/SearchStatus;ZLjava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/autosdk/l;->a:Lcn/kuwo/autosdk/k;

    iput-object p2, p0, Lcn/kuwo/autosdk/l;->b:Lcn/kuwo/autosdk/api/SearchStatus;

    iput-boolean p3, p0, Lcn/kuwo/autosdk/l;->c:Z

    iput-object p4, p0, Lcn/kuwo/autosdk/l;->d:Ljava/util/List;

    iput-boolean p5, p0, Lcn/kuwo/autosdk/l;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcn/kuwo/autosdk/l;->a:Lcn/kuwo/autosdk/k;

    invoke-static {v0}, Lcn/kuwo/autosdk/k;->a(Lcn/kuwo/autosdk/k;)Lcn/kuwo/autosdk/api/OnSearchListener;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/autosdk/l;->b:Lcn/kuwo/autosdk/api/SearchStatus;

    iget-boolean v2, p0, Lcn/kuwo/autosdk/l;->c:Z

    iget-object v3, p0, Lcn/kuwo/autosdk/l;->d:Ljava/util/List;

    iget-boolean v4, p0, Lcn/kuwo/autosdk/l;->e:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/kuwo/autosdk/api/OnSearchListener;->searchFinshed(Lcn/kuwo/autosdk/api/SearchStatus;ZLjava/util/List;Z)V

    return-void
.end method
