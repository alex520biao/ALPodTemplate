pod-template
============

An opinionated template for creating a Pod with the following features:

- Git as the source control management system.
- Clean folder structure.
- Project generation
- MIT license.
- Testing as a standard
- Turnkey access to Travis CI

## Getting started

There are two reasons for wanting to work on this template, making your own or improving the one for everyone's. In both cases you will want to work with the ruby classes inside the `setup` folder, and the example base template that it works on from inside `template/ios/`.

## Best practices

The command `pod lib create` aims to be ran along with this guide: http://guides.cocoapods.org/making/using-pod-lib-create.html so any changes of flow should be updated there also.

It is open to communal input, but adding new features, or new ideas are probably better off being discussed in an issue first. In general we try to think if an average Xcode user is going to use this feature or not, if it's unlikely is it a _very strongly_ encouraged best practice ( ala testing / CI. ) If it's something useful for saving a few minutes every deploy, or isn't easily documented in the guide it is likely to be denied in order to keep this project as simple as possible.

## Requirements:

- CocoaPods 0.31

## Demo
通过以下命令使用模板创建新Pod:

	pod lib create --template-url=https://github.com/alex520biao/ALPodTemplate.git ALXXXXPod

ALPodTemplate Fork From [https://github.com/cocoapods/pod-template](https://github.com/cocoapods/pod-template)

##PROJECT模板工程字符串替换
ProjectManipulator.rb中会自动替换PROJECT模板工程中的以下字符串:

	"PROJECT_OWNER" => @configurator.user_name,
	"TODAYS_DATE" => @configurator.date,
	"TODAYS_YEAR" => @configurator.year,
	"PROJECT" => @configurator.pod_name,
	"CPD" => @prefix

##Pod文件字符串替换
包括pod的`.md`、 `.configure`、 `LICENSE`、 `NAME.podspec`、 `POD_LICENSE`、 `.travis.yml`等文件中均支持使用变量。

* pod名称:`${POD_NAME}`
* 作者名:`${USER_NAME}`
* 作者邮箱:`${USER_EMAIL}`

这些自定义变量最终会被`TemplateConfigurator.rb`的Ruby代码赋值,cocoapod使用Ruby编写,因此Ruby可以获得`环境参数` 以及 `pod lib create`命令参数:

    text.gsub!("${POD_NAME}", @pod_name)
    text.gsub!("${REPO_NAME}", @pod_name.gsub('+', '-'))
    text.gsub!("${USER_NAME}", user_name)
    text.gsub!("${USER_EMAIL}", user_email)
    text.gsub!("${YEAR}", year)
    text.gsub!("${DATE}", date)

####TOTO
1. example工程中常用的第三方库默认添加进来，如网络库AFNetWorking、SDWebImage等
2. Example工程中测试需要使用的通用UI，比如列表、弹框、按钮等组件可以进行封装。方便快速构造demo工程。
3. Examole工程的Info.plist文件常用默认值添加。
