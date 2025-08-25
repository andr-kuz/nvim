return {
    {
        "mfussenegger/nvim-dap"
    },
    {
        "mfussenegger/nvim-dap-python",
        ft = "python",
        dependencies = {
            "mfussenegger/nvim-dap",
            "rcarriga/nvim-dap-ui"
        },
        config = function(_, opts)
            local path = "/usr/bin/python"
            require("dap-python").setup(path)
        end
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio"
        },
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")
            dapui.setup(
                {
                    controls = {
                      element = "repl",
                      enabled = false,
                    },
                    layouts = {
                        {
                            elements = {
                                {
                                    id = "repl",
                                    size = 0.5
                                },
                                {
                                    id = "console",
                                    size = 0.5
                                }
                            },
                            position = "bottom",
                            size = 10
                        },
                        {
                            elements = {
                                {
                                    id = "scopes",
                                }
                            },
                            position = "bottom",
                            size = 10
                        }
                    }
                }
            )
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end
    }
}
